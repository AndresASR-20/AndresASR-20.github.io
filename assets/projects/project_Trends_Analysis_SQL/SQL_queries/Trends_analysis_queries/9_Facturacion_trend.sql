SELECT 
    -- 1. Si usa Factura Electrónica (Yes/No)
    PaperlessBilling,
    
    -- 2. Total de clientes en cada modalidad
    COUNT(*) AS total_clientes,
    
    -- 3. Cuántos de ellos se fueron
    COUNT(CASE WHEN Churn = TRUE THEN 1 END) AS clientes_churn,
    
    -- 4. Tasa de Churn por tipo de facturación
    ROUND(
        (COUNT(CASE WHEN Churn = TRUE THEN 1 END)::NUMERIC / COUNT(*)::NUMERIC) * 100, 
        2
    ) AS tasa_churn_porcentaje,
    
    -- 5. Cargo mensual promedio para ver perfiles económicos
    ROUND(AVG(MonthlyCharges)::NUMERIC, 2) AS cargo_mensual_promedio
FROM Telco_customer_churn
GROUP BY PaperlessBilling
ORDER BY tasa_churn_porcentaje DESC;