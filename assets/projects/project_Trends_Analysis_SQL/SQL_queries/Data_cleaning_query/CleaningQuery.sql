-- 1. Modificar los registros que tienen espacios vacíos para hacerlos NULL
UPDATE Telco_customer_churn 
SET TotalCharges = NULL 
WHERE TotalCharges = ' ' OR TotalCharges = '';

-- 2. Cambiar el tipo de dato de la columna de VARCHAR a FLOAT definitivamente
ALTER TABLE Telco_customer_churn 
ALTER COLUMN TotalCharges TYPE FLOAT USING TotalCharges::FLOAT;
