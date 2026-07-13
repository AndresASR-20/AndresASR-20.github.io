SELECT 
    -- 1. Total de clientes en la base de datos
    COUNT(*) AS total_clientes,
    
    -- 2. Clientes que abandonaron la empresa
    COUNT(CASE WHEN Churn = TRUE THEN 1 END) AS clientes_churn,
    
    -- 3. Tasa de Churn Global (Porcentaje)
    ROUND(
        (COUNT(CASE WHEN Churn = TRUE THEN 1 END)::NUMERIC / COUNT(*)::NUMERIC) * 100, 
        2
    ) AS tasa_churn_porcentaje,
    
    -- 4. Impacto financiero total (Ingresos perdidos al mes)
    ROUND(
        SUM(CASE WHEN Churn = TRUE THEN MonthlyCharges END)::NUMERIC, 
        2
    ) AS ingresos_mensuales_perdidos,
    
    -- 5. Cargo mensual promedio de los clientes que se van (para comparar)
    ROUND(
        AVG(CASE WHEN Churn = TRUE THEN MonthlyCharges END)::NUMERIC, 
        2
    ) AS cargo_promedio_churn
FROM Telco_customer_churn;