/* =========================================================================
   Archivo: 03_kpi_queries.sql
   Descripción: Consultas de extracción y cálculo de KPIs de la industria
   FMCG, listas para: (a) validar el análisis en SQL, y (b) usarse como
   fuente ("Import" o vía vista) para el dashboard de Power BI.

   Índice:
   1. Ventas y crecimiento (Revenue, YoY, MoM)
   2. Distribución y disponibilidad (numérica, ponderada, OOS)
   3. Rentabilidad y promociones (margen, ROI de promo)
   4. Market share y ranking de productos
   5. Vistas reutilizables para Power BI
   ========================================================================= */

USE FMCG_Analytics;
GO

/* =========================================================================
   1. VENTAS Y CRECIMIENTO
   ========================================================================= */

-- 1.1 Revenue mensual total, por categoría y por canal
SELECT
    d.[year],
    d.[month],
    d.month_name,
    p.category,
    s.channel,
    SUM(f.revenue)                         AS total_revenue,
    SUM(f.units_sold)                      AS total_units,
    SUM(f.revenue) / NULLIF(SUM(f.units_sold), 0) AS avg_ticket
FROM dbo.Fact_Sales f
JOIN dbo.Dim_Date d     ON f.date_id = d.date_id
JOIN dbo.Dim_Product p  ON f.product_id = p.product_id
JOIN dbo.Dim_Store s    ON f.store_id = s.store_id
GROUP BY d.[year], d.[month], d.month_name, p.category, s.channel
ORDER BY d.[year], d.[month];
GO

-- 1.2 Crecimiento Mes contra Mes (MoM) por categoría
WITH monthly_sales AS (
    SELECT
        p.category,
        d.[year],
        d.[month],
        SUM(f.revenue) AS revenue
    FROM dbo.Fact_Sales f
    JOIN dbo.Dim_Date d    ON f.date_id = d.date_id
    JOIN dbo.Dim_Product p ON f.product_id = p.product_id
    GROUP BY p.category, d.[year], d.[month]
)
SELECT
    category,
    [year],
    [month],
    revenue,
    LAG(revenue) OVER (PARTITION BY category ORDER BY [year], [month]) AS revenue_prev_month,
    CAST(
        100.0 * (revenue - LAG(revenue) OVER (PARTITION BY category ORDER BY [year], [month]))
        / NULLIF(LAG(revenue) OVER (PARTITION BY category ORDER BY [year], [month]), 0)
        AS DECIMAL(6,2)
    ) AS mom_growth_pct
FROM monthly_sales
ORDER BY category, [year], [month];
GO

-- 1.3 Crecimiento Año contra Año (YoY) por categoría y trimestre
WITH quarterly_sales AS (
    SELECT
        p.category,
        d.[year],
        d.quarter,
        SUM(f.revenue) AS revenue
    FROM dbo.Fact_Sales f
    JOIN dbo.Dim_Date d    ON f.date_id = d.date_id
    JOIN dbo.Dim_Product p ON f.product_id = p.product_id
    GROUP BY p.category, d.[year], d.quarter
)
SELECT
    category,
    [year],
    quarter,
    revenue,
    LAG(revenue) OVER (PARTITION BY category, quarter ORDER BY [year]) AS revenue_prev_year,
    CAST(
        100.0 * (revenue - LAG(revenue) OVER (PARTITION BY category, quarter ORDER BY [year]))
        / NULLIF(LAG(revenue) OVER (PARTITION BY category, quarter ORDER BY [year]), 0)
        AS DECIMAL(6,2)
    ) AS yoy_growth_pct
FROM quarterly_sales
ORDER BY category, quarter, [year];
GO

/* =========================================================================
   2. DISTRIBUCIÓN Y DISPONIBILIDAD
   ========================================================================= */

-- 2.1 Distribución numérica (% de tiendas donde el producto está disponible)
SELECT
    p.category,
    p.product_name,
    COUNT(DISTINCT CASE WHEN fd.is_available = 1 THEN fd.store_id END) AS tiendas_con_producto,
    COUNT(DISTINCT fd.store_id)                                        AS total_tiendas,
    CAST(
        100.0 * COUNT(DISTINCT CASE WHEN fd.is_available = 1 THEN fd.store_id END)
        / NULLIF(COUNT(DISTINCT fd.store_id), 0)
        AS DECIMAL(5,2)
    ) AS distribucion_numerica_pct
FROM dbo.Fact_Distribution fd
JOIN dbo.Dim_Product p ON fd.product_id = p.product_id
GROUP BY p.category, p.product_name
ORDER BY distribucion_numerica_pct DESC;
GO

-- 2.2 Distribución ponderada por tamaño de tienda (m2) — pondera tiendas grandes
SELECT
    p.category,
    p.product_name,
    SUM(CASE WHEN fd.is_available = 1 THEN s.store_size_m2 ELSE 0 END) AS m2_con_producto,
    SUM(s.store_size_m2)                                               AS m2_total,
    CAST(
        100.0 * SUM(CASE WHEN fd.is_available = 1 THEN s.store_size_m2 ELSE 0 END)
        / NULLIF(SUM(s.store_size_m2), 0)
        AS DECIMAL(5,2)
    ) AS distribucion_ponderada_pct
FROM dbo.Fact_Distribution fd
JOIN dbo.Dim_Product p ON fd.product_id = p.product_id
JOIN dbo.Dim_Store  s  ON fd.store_id = s.store_id
GROUP BY p.category, p.product_name
ORDER BY distribucion_ponderada_pct DESC;
GO

-- 2.3 Tasa de quiebre de stock (Out-of-Stock rate) por región y canal
SELECT
    s.region,
    s.channel,
    d.[year],
    d.[month],
    SUM(CASE WHEN fd.is_available = 0 THEN 1 ELSE 0 END)          AS semanas_oos,
    COUNT(*)                                                       AS total_registros,
    CAST(
        100.0 * SUM(CASE WHEN fd.is_available = 0 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS oos_rate_pct
FROM dbo.Fact_Distribution fd
JOIN dbo.Dim_Store s ON fd.store_id = s.store_id
JOIN dbo.Dim_Date  d ON fd.date_id = d.date_id
GROUP BY s.region, s.channel, d.[year], d.[month]
ORDER BY oos_rate_pct DESC;
GO

/* =========================================================================
   3. RENTABILIDAD Y PROMOCIONES
   ========================================================================= */

-- 3.1 Margen bruto por categoría y marca
SELECT
    p.category,
    p.brand,
    SUM(f.revenue)                                          AS revenue,
    SUM(f.cost)                                              AS cost,
    SUM(f.revenue) - SUM(f.cost)                             AS gross_profit,
    CAST(100.0 * (SUM(f.revenue) - SUM(f.cost)) / NULLIF(SUM(f.revenue),0) AS DECIMAL(5,2)) AS margin_pct
FROM dbo.Fact_Sales f
JOIN dbo.Dim_Product p ON f.product_id = p.product_id
GROUP BY p.category, p.brand
ORDER BY gross_profit DESC;
GO

-- 3.2 Efectividad / ROI de promociones: comparación unidades e ingresos
--     con promoción vs. sin promoción, por tipo de promoción
SELECT
    pr.promotion_name,
    pr.promotion_type,
    COUNT(*)                                    AS transacciones,
    SUM(f.units_sold)                           AS unidades_totales,
    AVG(f.units_sold * 1.0)                      AS unidades_prom_por_transaccion,
    SUM(f.revenue)                               AS revenue_total,
    SUM(f.revenue) - SUM(f.cost)                 AS profit_total,
    CAST(100.0 * (SUM(f.revenue) - SUM(f.cost)) / NULLIF(SUM(f.revenue),0) AS DECIMAL(5,2)) AS margin_pct
FROM dbo.Fact_Sales f
JOIN dbo.Dim_Promotion pr ON f.promotion_id = pr.promotion_id
GROUP BY pr.promotion_name, pr.promotion_type
ORDER BY revenue_total DESC;
GO

-- 3.3 Elasticidad simple: unidades promedio vendidas por producto,
--     comparando semanas con y sin promoción
SELECT
    p.product_name,
    AVG(CASE WHEN pr.promotion_name <> 'Sin Promoción' THEN f.units_sold END) AS avg_unidades_con_promo,
    AVG(CASE WHEN pr.promotion_name  = 'Sin Promoción' THEN f.units_sold END) AS avg_unidades_sin_promo
FROM dbo.Fact_Sales f
JOIN dbo.Dim_Product p    ON f.product_id = p.product_id
JOIN dbo.Dim_Promotion pr ON f.promotion_id = pr.promotion_id
GROUP BY p.product_name
HAVING AVG(CASE WHEN pr.promotion_name <> 'Sin Promoción' THEN f.units_sold END) IS NOT NULL
ORDER BY avg_unidades_con_promo DESC;
GO

/* =========================================================================
   4. MARKET SHARE Y RANKING
   ========================================================================= */

-- 4.1 Market share por marca dentro de cada categoría
WITH brand_sales AS (
    SELECT p.category, p.brand, SUM(f.revenue) AS revenue
    FROM dbo.Fact_Sales f
    JOIN dbo.Dim_Product p ON f.product_id = p.product_id
    GROUP BY p.category, p.brand
),
category_totals AS (
    SELECT category, SUM(revenue) AS total_category_revenue
    FROM brand_sales
    GROUP BY category
)
SELECT
    b.category,
    b.brand,
    b.revenue,
    CAST(100.0 * b.revenue / c.total_category_revenue AS DECIMAL(5,2)) AS market_share_pct,
    RANK() OVER (PARTITION BY b.category ORDER BY b.revenue DESC)      AS ranking_en_categoria
FROM brand_sales b
JOIN category_totals c ON b.category = c.category
ORDER BY b.category, ranking_en_categoria;
GO

-- 4.2 Top 10 productos por revenue (con % acumulado — análisis tipo Pareto)
WITH product_sales AS (
    SELECT p.product_id, p.product_name, p.category, SUM(f.revenue) AS revenue
    FROM dbo.Fact_Sales f
    JOIN dbo.Dim_Product p ON f.product_id = p.product_id
    GROUP BY p.product_id, p.product_name, p.category
)
SELECT TOP 10
    product_name,
    category,
    revenue,
    CAST(100.0 * revenue / SUM(revenue) OVER () AS DECIMAL(5,2)) AS pct_del_total,
    CAST(100.0 * SUM(revenue) OVER (ORDER BY revenue DESC ROWS UNBOUNDED PRECEDING)
         / SUM(revenue) OVER () AS DECIMAL(5,2)) AS pct_acumulado
FROM product_sales
ORDER BY revenue DESC;
GO

/* =========================================================================
   5. VISTAS REUTILIZABLES PARA POWER BI
   Estas vistas se pueden conectar directamente desde Power BI
   (Get Data > SQL Server > seleccionar vista) para simplificar el modelo.
   ========================================================================= */

IF OBJECT_ID('dbo.vw_Sales_Enriched', 'V') IS NOT NULL DROP VIEW dbo.vw_Sales_Enriched;
GO
CREATE VIEW dbo.vw_Sales_Enriched AS
SELECT
    f.sale_id,
    d.[date],
    d.[year],
    d.[month],
    d.month_name,
    d.quarter,
    d.week_of_year,
    p.product_id,
    p.product_name,
    p.brand,
    p.category,
    p.subcategory,
    s.store_id,
    s.store_name,
    s.channel,
    s.region,
    s.city,
    pr.promotion_name,
    pr.promotion_type,
    f.units_sold,
    f.unit_price_actual,
    f.revenue,
    f.cost,
    (f.revenue - f.cost) AS gross_profit
FROM dbo.Fact_Sales f
JOIN dbo.Dim_Date d      ON f.date_id = d.date_id
JOIN dbo.Dim_Product p   ON f.product_id = p.product_id
JOIN dbo.Dim_Store s     ON f.store_id = s.store_id
JOIN dbo.Dim_Promotion pr ON f.promotion_id = pr.promotion_id;
GO

IF OBJECT_ID('dbo.vw_Distribution_Enriched', 'V') IS NOT NULL DROP VIEW dbo.vw_Distribution_Enriched;
GO
CREATE VIEW dbo.vw_Distribution_Enriched AS
SELECT
    fd.date_id,
    d.[date],
    d.[year],
    d.[month],
    d.week_of_year,
    p.product_id,
    p.product_name,
    p.category,
    s.store_id,
    s.store_name,
    s.channel,
    s.region,
    s.store_size_m2,
    fd.is_available
FROM dbo.Fact_Distribution fd
JOIN dbo.Dim_Date d    ON fd.date_id = d.date_id
JOIN dbo.Dim_Product p ON fd.product_id = p.product_id
JOIN dbo.Dim_Store s   ON fd.store_id = s.store_id;
GO

PRINT 'Vistas vw_Sales_Enriched y vw_Distribution_Enriched creadas.';
