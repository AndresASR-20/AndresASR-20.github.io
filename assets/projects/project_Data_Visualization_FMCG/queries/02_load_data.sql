/* =========================================================================
   Archivo: 02_load_data.sql
   Descripción: Carga los CSV generados (carpeta /data del proyecto) hacia
   las tablas del esquema estrella usando BULK INSERT.

   IMPORTANTE:
   - Reemplaza 'C:\FMCG_Portfolio\data\' por la ruta real donde tengas
     los archivos CSV en tu máquina (o en el servidor SQL Server).
   - Los CSV incluyen encabezado (fila 1), por eso FIRSTROW = 2.
   - Si usas SQL Server en Docker/Linux, ajusta la ruta al formato Unix.
   - Las columnas is_weekend / is_available son TINYINT (0/1) y no BIT, a
     propósito: BULK INSERT suele fallar al convertir texto a BIT (incluso
     con '0'/'1' limpios), así que se evita ese tipo de dato en la carga.
   - Este script es re-ejecutable: primero borra los datos existentes
     (en orden seguro para las llaves foráneas) antes de volver a cargar,
     así puedes correrlo varias veces sin errores de llave duplicada.
   ========================================================================= */

USE FMCG_Analytics;
GO

/* -------------------------------------------------------------------------
   0. Limpieza previa (orden seguro para FKs: primero las tablas de hechos,
      que referencian a las dimensiones, luego las dimensiones)
   ------------------------------------------------------------------------- */
DELETE FROM dbo.Fact_Distribution;
DELETE FROM dbo.Fact_Sales;
DELETE FROM dbo.Dim_Promotion;
DELETE FROM dbo.Dim_Store;
DELETE FROM dbo.Dim_Product;
DELETE FROM dbo.Dim_Date;
GO

-- 1. Dim_Date
BULK INSERT dbo.Dim_Date
FROM 'C:\FMCG_Portfolio\data\dim_date.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    TABLOCK
);
GO

-- 2. Dim_Product
BULK INSERT dbo.Dim_Product
FROM 'C:\FMCG_Portfolio\data\dim_product.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    TABLOCK
);
GO

-- 3. Dim_Store
BULK INSERT dbo.Dim_Store
FROM 'C:\FMCG_Portfolio\data\dim_store.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    TABLOCK
);
GO

-- 4. Dim_Promotion
BULK INSERT dbo.Dim_Promotion
FROM 'C:\FMCG_Portfolio\data\dim_promotion.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    TABLOCK
);
GO

-- 5. Fact_Sales
BULK INSERT dbo.Fact_Sales
FROM 'C:\FMCG_Portfolio\data\fact_sales.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    TABLOCK
);
GO

-- 6. Fact_Distribution
BULK INSERT dbo.Fact_Distribution
FROM 'C:\FMCG_Portfolio\data\fact_distribution.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    TABLOCK
);
GO

-- Verificación rápida de conteos
SELECT 'Dim_Date' AS tabla, COUNT(*) AS filas FROM dbo.Dim_Date
UNION ALL SELECT 'Dim_Product', COUNT(*) FROM dbo.Dim_Product
UNION ALL SELECT 'Dim_Store', COUNT(*) FROM dbo.Dim_Store
UNION ALL SELECT 'Dim_Promotion', COUNT(*) FROM dbo.Dim_Promotion
UNION ALL SELECT 'Fact_Sales', COUNT(*) FROM dbo.Fact_Sales
UNION ALL SELECT 'Fact_Distribution', COUNT(*) FROM dbo.Fact_Distribution;
GO

/* -------------------------------------------------------------------------
   ALTERNATIVA sin BULK INSERT (si el servidor no tiene acceso al disco):
   Usa el asistente "Import Flat File" de SSMS (clic derecho en la BD >
   Tasks > Import Flat File) para cada CSV, o importa vía Power BI /
   Python (pyodbc + pandas.to_sql) como se describe en docs/README.md.
   ------------------------------------------------------------------------- */
