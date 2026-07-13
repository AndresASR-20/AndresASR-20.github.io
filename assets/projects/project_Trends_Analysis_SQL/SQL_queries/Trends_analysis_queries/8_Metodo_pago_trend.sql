SELECT 
    -- 1. Método de Pago
    PaymentMethod,
    
    -- 2. Total de clientes en este método
    COUNT(*) AS total_clientes,
    
    -- 3. Cuántos cancelaron
    COUNT(CASE WHEN Churn = TRUE THEN 1 END) AS clientes_churn,
    
    -- 4. Tasa de Churn por método de pago
    ROUND(
        (COUNT(CASE WHEN Churn = TRUE THEN 1 END)::NUMERIC / COUNT(*)::NUMERIC) * 100, 
        2
    ) AS tasa_churn_porcentaje,
    
    -- 5. Cargo mensual promedio según el método de pago
    ROUND(AVG(MonthlyCharges)::NUMERIC, 2) AS cargo_mensual_promedio
FROM Telco_customer_churn
GROUP BY PaymentMethod
ORDER BY tasa_churn_porcentaje DESC;