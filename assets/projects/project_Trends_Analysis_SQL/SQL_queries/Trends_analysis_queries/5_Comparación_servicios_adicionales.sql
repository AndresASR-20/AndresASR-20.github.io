WITH conteo_servicios AS (
    SELECT 
        customerID,
        Churn,
        (
            (CASE WHEN OnlineSecurity = 'Yes' THEN 1 ELSE 0 END) +
            (CASE WHEN OnlineBackup = 'Yes' THEN 1 ELSE 0 END) +
            (CASE WHEN DeviceProtection = 'Yes' THEN 1 ELSE 0 END) +
            (CASE WHEN TechSupport = 'Yes' THEN 1 ELSE 0 END) +
            (CASE WHEN StreamingTV = 'Yes' THEN 1 ELSE 0 END) +
            (CASE WHEN StreamingMovies = 'Yes' THEN 1 ELSE 0 END)
        ) AS total_servicios_adicionales
    FROM Telco_customer_churn
)
SELECT 
    CASE 
        WHEN Churn = TRUE THEN 'Cliente Perdido (Churn)'
        ELSE 'Cliente Activo (Retenido)'
    END AS estado_cliente,
    COUNT(*) AS total_clientes,
    ROUND(AVG(total_servicios_adicionales), 2) AS promedio_servicios_contratados
FROM conteo_servicios
GROUP BY Churn;