/* =========================================================================
   PROYECTO: Análisis de Métricas FMCG — Modelo Estrella en SQL Server
   Archivo: 01_create_database.sql
   Descripción: Crea la base de datos y el esquema estrella
   (dimensiones + tablas de hechos) para el proyecto de portafolio.
   ========================================================================= */

IF DB_ID('FMCG_Analytics') IS NULL
BEGIN
    CREATE DATABASE FMCG_Analytics;
END
GO

USE FMCG_Analytics;
GO

/* -------------------------------------------------------------------------
   DIM_DATE
   ------------------------------------------------------------------------- */
IF OBJECT_ID('dbo.Dim_Date', 'U') IS NOT NULL DROP TABLE dbo.Dim_Date;
CREATE TABLE dbo.Dim_Date (
    date_id        INT         NOT NULL PRIMARY KEY,   -- formato YYYYMMDD
    [date]         DATE        NOT NULL,
    [day]          TINYINT     NOT NULL,
    [month]        TINYINT     NOT NULL,
    month_name     VARCHAR(20) NOT NULL,
    quarter        TINYINT     NOT NULL,
    [year]         SMALLINT    NOT NULL,
    week_of_year   TINYINT     NOT NULL,
    day_name       VARCHAR(20) NOT NULL,
    is_weekend     TINYINT     NOT NULL   -- 0 = entre semana, 1 = fin de semana
                                           -- (TINYINT en vez de BIT: BULK INSERT
                                           -- convierte texto a BIT de forma poco
                                           -- confiable; con 0/1 como TINYINT no falla)
);
GO

/* -------------------------------------------------------------------------
   DIM_PRODUCT
   ------------------------------------------------------------------------- */
IF OBJECT_ID('dbo.Dim_Product', 'U') IS NOT NULL DROP TABLE dbo.Dim_Product;
CREATE TABLE dbo.Dim_Product (
    product_id     INT           NOT NULL PRIMARY KEY,
    product_name   VARCHAR(150)  NOT NULL,
    brand          VARCHAR(60)   NOT NULL,
    category       VARCHAR(60)   NOT NULL,
    subcategory    VARCHAR(60)   NOT NULL,
    unit_size      VARCHAR(20)   NOT NULL,
    unit_cost      DECIMAL(10,2) NOT NULL,
    unit_price     DECIMAL(10,2) NOT NULL,
    launch_date    DATE          NOT NULL
);
GO

/* -------------------------------------------------------------------------
   DIM_STORE
   ------------------------------------------------------------------------- */
IF OBJECT_ID('dbo.Dim_Store', 'U') IS NOT NULL DROP TABLE dbo.Dim_Store;
CREATE TABLE dbo.Dim_Store (
    store_id       INT          NOT NULL PRIMARY KEY,
    store_name     VARCHAR(120) NOT NULL,
    channel        VARCHAR(40)  NOT NULL,
    region         VARCHAR(40)  NOT NULL,
    city           VARCHAR(60)  NOT NULL,
    store_size_m2  INT          NOT NULL,
    open_date      DATE         NOT NULL
);
GO

/* -------------------------------------------------------------------------
   DIM_PROMOTION
   ------------------------------------------------------------------------- */
IF OBJECT_ID('dbo.Dim_Promotion', 'U') IS NOT NULL DROP TABLE dbo.Dim_Promotion;
CREATE TABLE dbo.Dim_Promotion (
    promotion_id   INT           NOT NULL PRIMARY KEY,
    promotion_name VARCHAR(60)   NOT NULL,
    promotion_type VARCHAR(30)   NOT NULL,
    discount_pct   DECIMAL(5,2)  NOT NULL
);
GO

/* -------------------------------------------------------------------------
   FACT_SALES  (grano: semana x tienda x producto x promoción)
   ------------------------------------------------------------------------- */
IF OBJECT_ID('dbo.Fact_Sales', 'U') IS NOT NULL DROP TABLE dbo.Fact_Sales;
CREATE TABLE dbo.Fact_Sales (
    sale_id             INT           NOT NULL PRIMARY KEY,
    date_id             INT           NOT NULL,
    store_id            INT           NOT NULL,
    product_id          INT           NOT NULL,
    promotion_id        INT           NOT NULL,
    units_sold          INT           NOT NULL,
    unit_price_actual   DECIMAL(10,2) NOT NULL,
    revenue             DECIMAL(14,2) NOT NULL,
    cost                DECIMAL(14,2) NOT NULL,
    CONSTRAINT FK_Sales_Date      FOREIGN KEY (date_id)      REFERENCES dbo.Dim_Date(date_id),
    CONSTRAINT FK_Sales_Store     FOREIGN KEY (store_id)     REFERENCES dbo.Dim_Store(store_id),
    CONSTRAINT FK_Sales_Product   FOREIGN KEY (product_id)   REFERENCES dbo.Dim_Product(product_id),
    CONSTRAINT FK_Sales_Promotion FOREIGN KEY (promotion_id) REFERENCES dbo.Dim_Promotion(promotion_id)
);
GO

CREATE INDEX IX_FactSales_Date    ON dbo.Fact_Sales(date_id);
CREATE INDEX IX_FactSales_Store   ON dbo.Fact_Sales(store_id);
CREATE INDEX IX_FactSales_Product ON dbo.Fact_Sales(product_id);
GO

/* -------------------------------------------------------------------------
   FACT_DISTRIBUTION  (grano: semana x tienda x producto -> disponibilidad)
   Permite calcular distribución numérica/ponderada y % de quiebres de stock
   ------------------------------------------------------------------------- */
IF OBJECT_ID('dbo.Fact_Distribution', 'U') IS NOT NULL DROP TABLE dbo.Fact_Distribution;
CREATE TABLE dbo.Fact_Distribution (
    date_id       INT NOT NULL,
    store_id      INT NOT NULL,
    product_id    INT NOT NULL,
    is_available  TINYINT NOT NULL,   -- 0 = no disponible, 1 = disponible (ver nota en Dim_Date)
    CONSTRAINT PK_FactDistribution PRIMARY KEY (date_id, store_id, product_id),
    CONSTRAINT FK_Dist_Date    FOREIGN KEY (date_id)    REFERENCES dbo.Dim_Date(date_id),
    CONSTRAINT FK_Dist_Store   FOREIGN KEY (store_id)   REFERENCES dbo.Dim_Store(store_id),
    CONSTRAINT FK_Dist_Product FOREIGN KEY (product_id) REFERENCES dbo.Dim_Product(product_id)
);
GO

CREATE INDEX IX_FactDist_Store   ON dbo.Fact_Distribution(store_id);
CREATE INDEX IX_FactDist_Product ON dbo.Fact_Distribution(product_id);
GO

PRINT 'Base de datos y esquema FMCG_Analytics creados correctamente.';
