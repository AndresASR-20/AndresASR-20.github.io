SELECT 
    -- 1. Estado del cliente (Si se quedó o se fue)
    CASE 
        WHEN Churn = TRUE THEN 'Cliente Perdido (Churn)'
        ELSE 'Cliente Activo (Retenido)'
    END AS estado_cliente,
    
    -- 2. Conteo de clientes por grupo
    COUNT(*) AS cantidad_clientes,
    
    -- 3. Suma acumulada histórica de ingresos
    ROUND(SUM(TotalCharges)::NUMERIC, 2) AS total_ingresos_acumulados,
    
    -- 4. Promedio de lo que gastó un cliente en todo su ciclo de vida
    ROUND(AVG(TotalCharges)::NUMERIC, 2) AS promedio_gasto_historico
FROM Telco_customer_churn
GROUP BY Churn;