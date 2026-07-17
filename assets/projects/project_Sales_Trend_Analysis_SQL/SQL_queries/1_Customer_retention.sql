WITH Cohort_Users AS (
    -- Paso 1: Encontrar el mes de la primera compra de cada cliente ÚNICO
    -- Ojo: Usamos customer_unique_id porque customer_id cambia por cada orden.
    SELECT 
        c.customer_unique_id,
        MIN(o.order_purchase_timestamp) AS first_purchase_date,
        DATEADD(month, DATEDIFF(month, 0, MIN(o.order_purchase_timestamp)), 0) AS cohort_month
    FROM olist_orders o
    JOIN olist_customers c ON o.customer_id = c.customer_id
    WHERE o.order_status = 'delivered' -- Filtramos solo órdenes entregadas con éxito
    GROUP BY c.customer_unique_id
),

User_Activities AS (
    -- Paso 2: Obtener todas las compras de los usuarios y calcular la diferencia en meses (Cohort Index)
    SELECT 
        c.customer_unique_id,
        cu.cohort_month,
        DATEADD(month, DATEDIFF(month, 0, o.order_purchase_timestamp), 0) AS activity_month,
        -- DATEDIFF calcula cuántos meses pasaron desde la cohorte hasta esta compra específica
        DATEDIFF(month, cu.cohort_month, o.order_purchase_timestamp) AS cohort_index
    FROM olist_orders o
    JOIN olist_customers c ON o.customer_id = c.customer_id
    JOIN Cohort_Users cu ON c.customer_unique_id = cu.customer_unique_id
    WHERE o.order_status = 'delivered'
)

-- Paso 3: Agrupar por mes de cohorte e índice de cohorte para construir la matriz
SELECT 
    FORMAT(cohort_month, 'yyyy-MM') AS Cohorte,
    COUNT(DISTINCT customer_unique_id) AS Clientes_Iniciales,
    -- Contamos cuántos de esos clientes regresaron en los meses posteriores (Índices)
    COUNT(DISTINCT CASE WHEN cohort_index = 0 THEN customer_unique_id END) AS Mes_0,
    COUNT(DISTINCT CASE WHEN cohort_index = 1 THEN customer_unique_id END) AS Mes_1,
    COUNT(DISTINCT CASE WHEN cohort_index = 2 THEN customer_unique_id END) AS Mes_2,
    COUNT(DISTINCT CASE WHEN cohort_index = 3 THEN customer_unique_id END) AS Mes_3,
    COUNT(DISTINCT CASE WHEN cohort_index = 4 THEN customer_unique_id END) AS Mes_4,
    COUNT(DISTINCT CASE WHEN cohort_index = 5 THEN customer_unique_id END) AS Mes_5,
    COUNT(DISTINCT CASE WHEN cohort_index = 6 THEN customer_unique_id END) AS Mes_6,
    COUNT(DISTINCT CASE WHEN cohort_index = 7 THEN customer_unique_id END) AS Mes_7,
    COUNT(DISTINCT CASE WHEN cohort_index = 8 THEN customer_unique_id END) AS Mes_8,
    COUNT(DISTINCT CASE WHEN cohort_index = 9 THEN customer_unique_id END) AS Mes_9,
    COUNT(DISTINCT CASE WHEN cohort_index = 10 THEN customer_unique_id END) AS Mes_10,
    COUNT(DISTINCT CASE WHEN cohort_index = 11 THEN customer_unique_id END) AS Mes_11,
    COUNT(DISTINCT CASE WHEN cohort_index = 12 THEN customer_unique_id END) AS Mes_12,
    COUNT(DISTINCT CASE WHEN cohort_index = 13 THEN customer_unique_id END) AS Mes_13,
    COUNT(DISTINCT CASE WHEN cohort_index = 14 THEN customer_unique_id END) AS Mes_14,
    COUNT(DISTINCT CASE WHEN cohort_index = 15 THEN customer_unique_id END) AS Mes_15,
    COUNT(DISTINCT CASE WHEN cohort_index = 16 THEN customer_unique_id END) AS Mes_16,
    COUNT(DISTINCT CASE WHEN cohort_index = 17 THEN customer_unique_id END) AS Mes_17,
    COUNT(DISTINCT CASE WHEN cohort_index = 18 THEN customer_unique_id END) AS Mes_18,
    COUNT(DISTINCT CASE WHEN cohort_index = 19 THEN customer_unique_id END) AS Mes_18,
    COUNT(DISTINCT CASE WHEN cohort_index = 20 THEN customer_unique_id END) AS Mes_19,
    COUNT(DISTINCT CASE WHEN cohort_index = 21 THEN customer_unique_id END) AS Mes_20,
    COUNT(DISTINCT CASE WHEN cohort_index = 22 THEN customer_unique_id END) AS Mes_21
FROM User_Activities
GROUP BY cohort_month
ORDER BY cohort_month;