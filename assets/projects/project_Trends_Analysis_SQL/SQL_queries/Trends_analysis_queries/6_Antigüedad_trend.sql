WITH cohortes_antiguedad AS (
    SELECT 
        customerID,
        Churn,
        tenure,
        CASE 
            WHEN tenure <= 3 THEN '0-3 meses (Muy Crítico)'
            WHEN tenure <= 6 THEN '4-6 meses (Alerta Temprana)'
            WHEN tenure <= 12 THEN '7-12 meses (1er Año)'
            WHEN tenure <= 24 THEN '13-24 meses (2do Año)'
            WHEN tenure <= 48 THEN '25-48 meses (Mediano Plazo)'
            ELSE 'Más de 48 meses (Leales)'
        END AS rango_antiguedad
    FROM Telco_customer_churn
)
SELECT 
    rango_antiguedad,
    COUNT(*) AS total_clientes_en_rango,
    COUNT(CASE WHEN Churn = TRUE THEN 1 END) AS clientes_churn,
    ROUND(
        (COUNT(CASE WHEN Churn = TRUE THEN 1 END)::NUMERIC / COUNT(*)::NUMERIC) * 100, 
        2
    ) AS tasa_churn_porcentaje
FROM cohortes_antiguedad
GROUP BY rango_antiguedad
ORDER BY MIN(tenure); -- Ordena cronológicamente según los meses mínimos de cada rango