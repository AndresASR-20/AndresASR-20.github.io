(
    SELECT 
        'Seguridad en Línea (OnlineSecurity)' AS servicio,
        OnlineSecurity AS estatus_servicio,
        COUNT(*) AS total_clientes,
        ROUND((COUNT(CASE WHEN Churn = TRUE THEN 1 END)::NUMERIC / COUNT(*)::NUMERIC) * 100, 2) AS tasa_churn_porcentaje
    FROM Telco_customer_churn
    WHERE OnlineSecurity IN ('Yes', 'No')
    GROUP BY OnlineSecurity
)
UNION ALL
(
    SELECT 
        'Soporte Técnico (TechSupport)' AS servicio,
        TechSupport AS estatus_servicio,
        COUNT(*) AS total_clientes,
        ROUND((COUNT(CASE WHEN Churn = TRUE THEN 1 END)::NUMERIC / COUNT(*)::NUMERIC) * 100, 2) AS tasa_churn_porcentaje
    FROM Telco_customer_churn
    WHERE TechSupport IN ('Yes', 'No')
    GROUP BY TechSupport
)
ORDER BY servicio, estatus_servicio DESC;