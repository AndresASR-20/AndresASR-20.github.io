# ES Español

## Dashboard de análisis ejecutivo y comercial para la industria FMCG (extracción con SQL Server + Power BI)

Este proyecto consistió en el diseño e implementación de un dashboard interactivo en Power BI para una empresa de bienes de consumo masivo (FMCG) con presencia en múltiples canales y regiones. El objetivo principal fue centralizar y estructurar la información proveniente de tres fuentes clave del negocio: el registro transaccional de ventas (que detalla fechas, tiendas, canales y regiones), la disponibilidad semanal de producto en cada punto de venta (base de las métricas de distribución y quiebres de stock), y el desglose de promociones aplicadas por producto. Con esta base, se diseñó un modelo de datos dimensional en SQL Server, se extrajeron los KPIs mediante consultas T-SQL, y se transformaron los datos crudos en un ecosistema de visualización unificado que equilibra un enfoque ejecutivo de alto nivel con un análisis comercial profundamente operativo.

La solución permite al negocio supervisar continuamente su estatus mediante el seguimiento de KPIs críticos de la industria FMCG como el revenue total, el crecimiento mes contra mes y año contra año, el margen bruto, la distribución numérica y ponderada, y la tasa de quiebre de stock (OOS). Para responder a las necesidades estratégicas de la empresa, el cuadro de mando fue dotado de herramientas dinámicas que explican el comportamiento temporal y estacional de las ventas, la cobertura de producto por región y canal, la participación real de cada categoría y marca en el portafolio, y la efectividad y rentabilidad de las promociones. Como resultado, el negocio ahora cuenta con una herramienta clave para agilizar la toma de decisiones y detectar oportunidades de crecimiento y de mejora en distribución.

### Herramientas y Proceso de Datos

![SQL Server](https://img.shields.io/badge/SQL_Server-3262A8?style=for-the-badge)
![T-SQL](https://img.shields.io/badge/T--SQL-3262A8?style=for-the-badge)
![Power BI](https://img.shields.io/badge/Power_BI-3262A8?style=for-the-badge)
![DAX](https://img.shields.io/badge/DAX-3262A8?style=for-the-badge)
![Modelado de datos](https://img.shields.io/badge/Modelado_de_Datos-031796?style=for-the-badge)
![Dashboards](https://img.shields.io/badge/Dashboards-031796?style=for-the-badge)
![KPIs](https://img.shields.io/badge/KPI-031796?style=for-the-badge)
![Métricas de negocio](https://img.shields.io/badge/Métricas_de_Negocio-031796?style=for-the-badge)
![StoryTelling](https://img.shields.io/badge/Storytelling-031796?style=for-the-badge)

### Preguntas clave

1. ¿Cómo se comportan las métricas clave del negocio (revenue, margen, distribución, quiebres de stock)?
2. ¿Cómo se comportan las ventas a través del tiempo? ¿Existen patrones estacionales?
3. ¿Cómo es el comportamiento de las ventas y la disponibilidad por región y canal? ¿Dónde hay mayor oportunidad de mejora?
4. ¿Qué categorías y marcas tienen mayor y menor participación dentro del portafolio?
5. ¿Qué tan efectivas son las promociones y cómo impactan la rentabilidad del negocio?

### Metodología

- **Diseño de modelo de datos dimensional en SQL Server**: Se construyó un esquema estrella con 4 tablas de dimensión (fecha, producto, tienda, promoción) y 2 tablas de hechos (ventas y disponibilidad), pensado para consultas analíticas eficientes.
- **Extracción de KPIs mediante consultas T-SQL**: Se desarrollaron consultas con funciones de ventana (`LAG`, `RANK`, sumas acumuladas) para calcular crecimiento MoM/YoY, distribución numérica y ponderada, tasa de quiebre de stock, margen y ROI de promociones directamente en la base de datos.
- **Generación de cards para métricas clave de negocio**: Se genera una visualización de valores de métricas clave (revenue total, crecimiento YoY, margen bruto, distribución ponderada, tasa de quiebre de stock) para comprensión ágil del estatus del negocio.
- **Generación de gráfico de comportamiento de ventas en el tiempo**: Se genera una visualización de gráfico de líneas que permite entender ágilmente cómo han evolucionado las ventas a través del tiempo y detectar patrones estacionales.
- **Generación de mapa de calor de disponibilidad y quiebres de stock**: Se genera una visualización de matriz con formato de color secuencial que permite identificar, por región y canal, dónde la cobertura de producto es más débil.
- **Generación de gráfico de rentabilidad por producto**: Se genera una visualización de dispersión (margen % vs. revenue) que permite identificar productos de alto volumen pero bajo margen.
- **Generación de comparación de efectividad de promociones**: Se genera una visualización de barras que compara el promedio de unidades vendidas con y sin promoción por producto, y una tabla de ROI por tipo de promoción.
- **Creación de segmentadores y filtros dinámicos**: Se crearon elementos visuales para permitir dashboards dinámicos que filtran la información acorde a año, categoría, canal y región, permitiendo un análisis más profundo del comportamiento del negocio.

### Diccionario de datos
La tabla Dim_Date:
- date_id: la clave primaria (formato YYYYMMDD)
- date: fecha completa
- day: día del mes
- month: número de mes
- month_name: nombre del mes
- quarter: trimestre
- year: año
- week_of_year: semana del año
- day_name: nombre del día
- is_weekend: indicador de fin de semana (0 = entre semana, 1 = fin de semana)

La tabla Dim_Product:
- product_id: la clave primaria
- product_name: nombre del producto
- brand: marca del producto
- category: categoría del producto
- subcategory: subcategoría del producto
- unit_size: presentación/tamaño de la unidad
- unit_cost: costo unitario
- unit_price: precio de lista unitario
- launch_date: fecha de lanzamiento del producto

La tabla Dim_Store:
- store_id: la clave primaria
- store_name: nombre de la tienda
- channel: canal de venta (Supermercado, Farmacia, Conveniencia, etc.)
- region: región geográfica
- city: ciudad
- store_size_m2: tamaño de la tienda en metros cuadrados
- open_date: fecha de apertura de la tienda

La tabla Dim_Promotion:
- promotion_id: la clave primaria
- promotion_name: nombre de la promoción
- promotion_type: tipo de promoción (2x1, descuento %, sin promoción, etc.)
- discount_pct: porcentaje de descuento aplicado

La tabla Fact_Sales (grano: semana x tienda x producto x promoción):
- sale_id: la clave primaria
- date_id: llave foránea a Dim_Date
- store_id: llave foránea a Dim_Store
- product_id: llave foránea a Dim_Product
- promotion_id: llave foránea a Dim_Promotion
- units_sold: unidades vendidas
- unit_price_actual: precio unitario real de venta (con descuento aplicado, si corresponde)
- revenue: ingreso generado
- cost: costo generado

La tabla Fact_Distribution (grano: semana x tienda x producto):
- date_id: llave foránea a Dim_Date (parte de la clave primaria compuesta)
- store_id: llave foránea a Dim_Store (parte de la clave primaria compuesta)
- product_id: llave foránea a Dim_Product (parte de la clave primaria compuesta)
- is_available: indicador de disponibilidad de producto en tienda (0 = no disponible, 1 = disponible)

# EN English

## Executive and Commercial Analytics Dashboard for the FMCG Industry (SQL Server extraction + Power BI)

This project consisted of the design and implementation of an interactive Power BI dashboard for a fast-moving consumer goods (FMCG) company operating across multiple channels and regions. The main objective was to centralize and structure the information coming from three key sources of the business: the transactional sales record (which details dates, stores, channels and regions), the weekly product availability at each point of sale (the foundation of the distribution and out-of-stock metrics), and the breakdown of promotions applied per product. With this base, a dimensional data model was designed in SQL Server, KPIs were extracted through T-SQL queries, and the raw data were transformed into a unified visualization ecosystem that balances a high-level executive approach with a deeply operational commercial analysis.

The solution allows the business to continuously monitor its status through the tracking of critical FMCG KPIs such as total revenue, month-over-month and year-over-year growth, gross margin, numeric and weighted distribution, and out-of-stock rate (OOS). To respond to the strategic needs of the company, the dashboard was equipped with dynamic tools that explain the temporal and seasonal behavior of sales, product coverage by region and channel, the real participation of each category and brand within the portfolio, and the effectiveness and profitability of promotions. As a result, the business now has a key tool to streamline decision-making and detect growth opportunities and areas for improvement in distribution.

### Tools and Data Process

![SQL Server](https://img.shields.io/badge/SQL_Server-3262A8?style=for-the-badge)
![T-SQL](https://img.shields.io/badge/T--SQL-3262A8?style=for-the-badge)
![Power BI](https://img.shields.io/badge/Power_BI-3262A8?style=for-the-badge)
![DAX](https://img.shields.io/badge/DAX-3262A8?style=for-the-badge)
![Data Modeling](https://img.shields.io/badge/Data_Modeling-031796?style=for-the-badge)
![Dashboards](https://img.shields.io/badge/Dashboards-031796?style=for-the-badge)
![KPIs](https://img.shields.io/badge/KPI-031796?style=for-the-badge)
![Business Metrics](https://img.shields.io/badge/Business_Metrics-031796?style=for-the-badge)
![StoryTelling](https://img.shields.io/badge/Storytelling-031796?style=for-the-badge)

### Key questions

1. How do the business's key metrics behave (revenue, margin, distribution, out-of-stock)?
2. How do sales behave over time? Are there seasonal patterns?
3. How do sales and availability behave by region and channel? Where is there the most room for improvement?
4. Which categories and brands have the highest and lowest share within the portfolio?
5. How effective are promotions, and how do they impact the business's profitability?

### Methodology

- **Dimensional data model design in SQL Server**: A star schema was built with 4 dimension tables (date, product, store, promotion) and 2 fact tables (sales and availability), designed for efficient analytical queries.
- **KPI extraction through T-SQL queries**: Queries using window functions (`LAG`, `RANK`, running totals) were developed to calculate MoM/YoY growth, numeric and weighted distribution, out-of-stock rate, margin, and promotion ROI directly in the database.
- **Generation of cards for key business metrics**: A visualization of key metric values (total revenue, YoY growth, gross margin, weighted distribution, out-of-stock rate) is generated for agile understanding of the business status.
- **Generation of graph of sales behavior over time**: A line graph visualization is generated that allows to easily understand how sales have evolved over time and detect seasonal patterns.
- **Generation of availability and out-of-stock heatmap**: A matrix visualization with sequential color formatting is generated that allows to identify, by region and channel, where product coverage is weakest.
- **Generation of graph of profitability by product**: A scatter plot visualization (margin % vs. revenue) is generated that allows to identify high-volume, low-margin products.
- **Generation of promotion effectiveness comparison**: A bar graph visualization is generated comparing the average units sold with and without promotion per product, and a ROI table by promotion type.
- **Creation of dynamic slicers and filters**: Visual elements were created to allow dynamic dashboards that filter information according to year, category, channel and region, allowing to generate a deeper analysis of business behavior.

### Data Dictionary
The Dim_Date table:
- date_id: the primary key (YYYYMMDD format)
- date: full date
- day: day of month
- month: month number
- month_name: month name
- quarter: quarter
- year: year
- week_of_year: week of the year
- day_name: day name
- is_weekend: weekend indicator (0 = weekday, 1 = weekend)

The Dim_Product table:
- product_id: the primary key
- product_name: product name
- brand: product brand
- category: product category
- subcategory: product subcategory
- unit_size: unit size/presentation
- unit_cost: unit cost
- unit_price: unit list price
- launch_date: product launch date

The Dim_Store table:
- store_id: the primary key
- store_name: store name
- channel: sales channel (Supermarket, Pharmacy, Convenience, etc.)
- region: geographic region
- city: city
- store_size_m2: store size in square meters
- open_date: store opening date

The Dim_Promotion table:
- promotion_id: the primary key
- promotion_name: promotion name
- promotion_type: promotion type (2-for-1, % discount, no promotion, etc.)
- discount_pct: discount percentage applied

The Fact_Sales table (grain: week x store x product x promotion):
- sale_id: the primary key
- date_id: foreign key to Dim_Date
- store_id: foreign key to Dim_Store
- product_id: foreign key to Dim_Product
- promotion_id: foreign key to Dim_Promotion
- units_sold: units sold
- unit_price_actual: actual unit sale price (with discount applied, if any)
- revenue: revenue generated
- cost: cost incurred

The Fact_Distribution table (grain: week x store x product):
- date_id: foreign key to Dim_Date (part of the composite primary key)
- store_id: foreign key to Dim_Store (part of the composite primary key)
- product_id: foreign key to Dim_Product (part of the composite primary key)
- is_available: product availability indicator in store (0 = not available, 1 = available)

