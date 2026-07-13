SELECT 
    -- 1. Tipo de servicio de Internet
    InternetService,
    
    -- 2. Total de clientes en esta categoría
    COUNT(*) AS total_clientes,
    
    -- 3. Clientes que hicieron Churn en esta categoría
    COUNT(CASE WHEN Churn = TRUE THEN 1 END) AS clientes_churn,
    
    -- 4. Tasa de Churn por tipo de internet
    ROUND(
        (COUNT(CASE WHEN Churn = TRUE THEN 1 END)::NUMERIC / COUNT(*)::NUMERIC) * 100, 
        2
    ) AS tasa_churn_porcentaje,
    
    -- 5. Cargo mensual promedio en esta categoría
    ROUND(AVG(MonthlyCharges)::NUMERIC, 2) AS cargo_mensual_promedio
FROM Telco_customer_churn
GROUP BY InternetService
ORDER BY tasa_churn_porcentaje DESC;