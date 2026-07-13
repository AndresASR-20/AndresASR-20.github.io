
SELECT 
    customerID,
    gender,
    tenure AS meses_antiguedad,
    Contract AS tipo_contrato,
    InternetService AS tipo_internet,
    MonthlyCharges AS cargo_mensual,
    PaymentMethod AS metodo_pago
FROM Telco_customer_churn
WHERE 
    Churn = FALSE                            -- 1. Que sigan activos hoy
    AND Contract = 'Month-to-month'          -- 2. Sin ataduras contractuales
    AND InternetService = 'Fiber optic'      -- 3. El servicio con más quejas
    AND TechSupport = 'No'                   -- 4. Sin soporte técnico
    AND OnlineSecurity = 'No'                 -- 5. Sin escudo de seguridad
    AND tenure < 12                          -- 6. En su primer año crítico
ORDER BY 
    MonthlyCharges DESC                      -- 7. Priorizar las cuentas más caras
LIMIT 500;                                   -- 8. Extraer solo el Top 500 solicitado