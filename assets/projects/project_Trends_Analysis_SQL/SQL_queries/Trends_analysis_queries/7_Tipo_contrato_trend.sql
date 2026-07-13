SELECT 
    -- 1. Tipo de Contrato
    Contract,
    
    -- 2. Total de clientes bajo este esquema contractual
    COUNT(*) AS total_clientes,
    
    -- 3. Cuántos de ellos cancelaron
    COUNT(CASE WHEN Churn = TRUE THEN 1 END) AS clientes_churn,
    
    -- 4. Tasa de Churn desglosada por contrato
    ROUND(
        (COUNT(CASE WHEN Churn = TRUE THEN 1 END)::NUMERIC / COUNT(*)::NUMERIC) * 100, 
        2
    ) AS tasa_churn_porcentaje,
    
    -- 5. Antigüedad promedio (tenure) según el contrato para ver la estabilidad
    ROUND(AVG(tenure)::NUMERIC, 1) AS meses_permanencia_promedio
FROM Telco_customer_churn
GROUP BY Contract
ORDER BY tasa_churn_porcentaje DESC;