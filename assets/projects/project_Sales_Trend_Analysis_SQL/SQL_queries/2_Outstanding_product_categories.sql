WITH Product_Sales AS (
    -- Paso 1: Unir las tablas y calcular el total de ingresos y unidades vendidas por producto
    SELECT 
        t.product_category_name_english AS Categoria,
        i.product_id AS Producto_ID,
        SUM(i.price) AS Total_Ventas_Valor,
        COUNT(i.product_id) AS Unidades_Vendidas
    FROM olist_order_items i
    JOIN olist_products p ON i.product_id = p.product_id
    JOIN product_category_name_translation t ON p.product_category_name = t.product_category_name
    GROUP BY t.product_category_name_english, i.product_id
),

Ranked_Products AS (
    -- Paso 2: Aplicar la función de ventana DENSE_RANK() particionando por Categoría
    SELECT 
        Categoria,
        Producto_ID,
        Total_Ventas_Valor,
        Unidades_Vendidas,
        DENSE_RANK() OVER (
            PARTITION BY Categoria 
            ORDER BY Total_Ventas_Valor DESC
        ) AS Top_Rango
    FROM Product_Sales
)

-- Paso 3: Filtrar únicamente para traer el Top 3 de cada categoría
SELECT 
    Categoria,
    Top_Rango,
    Producto_ID,
    -- Damos un formato de moneda limpio a las ventas
    FORMAT(Total_Ventas_Valor, 'C', 'en-US') AS Total_Ventas,
    Unidades_Vendidas
FROM Ranked_Products
WHERE Top_Rango <= 3
ORDER BY Categoria, Top_Rango;