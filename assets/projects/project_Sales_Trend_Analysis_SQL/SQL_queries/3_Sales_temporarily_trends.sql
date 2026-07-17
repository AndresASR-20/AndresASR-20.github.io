WITH Daily_Sales AS (
    -- Paso 1: Agrupar las ventas a nivel diario (truncando la fecha)
    SELECT 
        CAST(o.order_purchase_timestamp AS DATE) AS Fecha,
        SUM(i.price) AS Ventas_Del_Dia,
        COUNT(DISTINCT o.order_id) AS Ordenes_Del_Dia
    FROM olist_orders o
    JOIN olist_order_items i ON o.order_id = i.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY CAST(o.order_purchase_timestamp AS DATE)
)

-- Paso 2: Aplicar la función de ventana con límites de filas (ROWS BETWEEN)
SELECT 
    Fecha,
    FORMAT(Ventas_Del_Dia, 'C', 'en-US') AS Ventas_Diarias_Crudas,
    Ordenes_Del_Dia,
    
    -- Lógica de Media Móvil de Ventas (Últimos 7 días)
    FORMAT(
        AVG(Ventas_Del_Dia) OVER (
            ORDER BY Fecha 
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ), 
        'C', 'en-US'
    ) AS Media_Movil_Ventas_7D,
    
    -- Lógica de Media Móvil de Órdenes (Últimos 7 días)
    AVG(Ordenes_Del_Dia) OVER (
        ORDER BY Fecha 
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS Media_Movil_Ordenes_7D
FROM Daily_Sales
ORDER BY Fecha;