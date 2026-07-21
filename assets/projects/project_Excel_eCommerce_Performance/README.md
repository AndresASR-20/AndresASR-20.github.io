# ES Español

## Inteligencia de Ventas y Devoluciones en Retail. Detección de Fugas de Ingresos mediante Power Pivot y DAX

Este proyecto consistió en el análisis diagnóstico y el diseño de una arquitectura analítica ejecutiva sobre datos transaccionales masivos para identificar la variabilidad en los ingresos y auditar la tasa de devoluciones en una plataforma e-commerce multinacional. Tras un proceso riguroso de ingesta, saneamiento y tipado de datos en Power Query (M), se construyó un modelo dimensional en Power Pivot potenciado con medidas en DAX para aislar el sesgo de las cancelaciones sobre las ventas reales. Se desarrollaron análisis temporales y geográficos avanzados que permitieron descubrir el fenómeno del desfase temporal (temporal lag), donde devoluciones masivas post-temporada navideña sobrepasaron el volumen de ventas del periodo corriente, evidenciando un efecto de arrastre de inventario de ciclos previos.

La solución dota a la alta dirección y a los equipos de Operaciones, Finanzas y Supply Chain de un Dashboard interactivo de alto nivel que transforma más de medio millón de registros en un mapa táctico de decisiones. Gracias a este cuadro de mando, la empresa puede migrar de un monitoreo pasivo de ventas a una gestión proactiva del riesgo comercial, permitiendo auditar el impacto real de las devoluciones en la caja chica, reestructurar las políticas de retorno de producto para mitigar fugas de capital y optimizar la estrategia de expansión en mercados internacionales clave como Países Bajos, Irlanda y Alemania.

### Herramientas y Proceso de Datos

![Microsoft Excel](https://img.shields.io/badge/Microsoft_Excel-3262A8?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Power Query](https://img.shields.io/badge/Power_Query-3262A8?style=for-the-badge&logo=powerbi&logoColor=black)
![Power Pivot](https://img.shields.io/badge/Power_Pivot-3262A8?style=for-the-badge&logo=microsoft&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-3262A8?style=for-the-badge&logo=microsoft&logoColor=white)
![Visualización de datos](https://img.shields.io/badge/Visualización_de_datos-031796?style=for-the-badge)

### Preguntas clave

- 📊 Dirección General y Finanzas (Estrategia y Flujo de Caja)
1. ¿Cuál es el volumen real de ingresos netos que genera el negocio tras descontar el impacto de las devoluciones?
2. ¿Cuál es el porcentaje de fuga de capital global por concepto de devoluciones y se mantiene dentro de los márgenes aceptables del e-commerce?
3. ¿Cómo impactan las devoluciones al flujo de caja durante el primer trimestre (Q1) frente al cierre de año (Q4)?
- 🌍 Growth, Marketing y Expansión Internacional
4. Si excluimos el mercado dominante (Reino Unido), ¿cuáles son los 3 países internacionales con mayor volumen de ventas para enfocar las campañas de adquisición?
5. ¿Existen países internacionales que, a pesar de tener buenas ventas, presenten tasas de devolución anormalmente altas que arriesguen la rentabilidad de la pauta publicitaria?
- 📦 Operaciones, Logística y Servicio al Cliente
6. ¿En qué meses del año la operación sufre el fenómeno de "desfase temporal" (temporal lag) donde las devoluciones procesadas amenazan con superar la venta del mes?
7. ¿Cuál es el alcance real de la base de clientes activos que están sosteniendo el volumen transaccional de la empresa?
- 🗓️ Análisis Estacional y Planificación Comercial
8. ¿Cómo varía el comportamiento de compra y la tasa de devolución cuando comparamos el desempeño interanual de 2010 vs. 2011?
9. ¿Qué meses representan la "temporada baja" de ventas donde el equipo comercial debe activar promociones para estimular la demanda?

### Metodología

- **Ingesta, saneamiento y tipado estructural en Power Query:** Se ejecutó la importación del volumen transaccional masivo hacia Power Query, aplicando una limpieza rigurosa sobre los datos crudos para corregir inconsistencias de origen; se depuraron descripciones operativas no comerciales (AMAZON FEE, POSTAGE, ajustadores de inventario) y se reconfiguraron los tipos de datos asignando formato de texto a códigos de stock/factura (StockCode, InvoiceNo), valores decimales moneda a los precios unitarios (UnitPrice) y marcas de tiempo nativas (DateTime), garantizando la integridad técnica del modelo.
- **Aislamiento de transacciones y lógica de notas de crédito:** Se implementó una regla de negocio condicional para segmentar la naturaleza de los registros, identificando las facturas regulares frente a las devoluciones/cancelaciones mediante la detección del prefijo 'C' en el identificador de factura y valores negativos en la cantidad (Quantity < 0), sentando las bases sintácticas para aislar las devoluciones sin corruptos en los totales brutos.
- **Modelado dimensional y desarrollo de métricas dinámicas en DAX:** Se estructuró un modelo de datos robusto en Power Pivot construyendo medidas analíticas optimizadas en DAX; se utilizó la función SUMX combinada con FILTER para calcular las ventas puras absolutas (Quantity > 0) y el monto consolidado de devoluciones (ABS(Quantity)), integrando la función DIVIDE con manejo de errores para obtener la tasa de devolución real (Return_Rate) y DISTINCTCOUNT para contabilizar la base real de clientes únicos.
- **Diagnóstico del fenómeno de desfase temporal (Temporal Lag):** Se diseñó un análisis de variaciones temporales mes a mes para auditar picos atípicos en las devoluciones, identificando y documentando el efecto de arrastre de inventario post-temporada navideña (donde devoluciones procesadas en enero sobre compras de diciembre generaron tasas de retorno superiores al 100% en productos específicos), permitiendo diagnosticar cuellos de botella en las ventanas de devolución sin alterar la integridad matemática de las fuentes.
- **Aislamiento geográfico y jerarquización de mercados (Top 10):** Se configuraron filtros de comportamiento combinados en la capa visual para aislar el mercado dominante (Reino Unido) y evaluar el desempeño del comercio internacional, habilitando la función de filtros múltiples por campo para jerarquizar dinámicamente el Top 10 de países con mayor volumen de facturación pura (Total_only_sales), eliminando el ruido visual de mercados marginales y reescalando las barras de comparación.
- **Maquetación ejecutable y arquitectura UX/UI de Dashboard:** Se transformó el lienzo de Excel en una interfaz interactiva de nivel directivo eliminando elementos nativos de hoja de cálculo (cuadrículas, encabezados y barras de fórmulas), estructurando tarjetas de KPIs flotantes con paletas de color corporativas contrastadas (Azul Marino para ingresos y Coral/Rojo para alertas) y vinculando segmentadores de datos horizontales por año, mes y país para permitir una exploración analítica fluida en tiempo real.

### Diccionario de datos
La tabla Online Retail (Transactions):
- InvoiceNo: Código alfanumérico único asignado a cada transacción. Los códigos que inician con el prefijo 'C' indican una cancelación o devolución (Credit Note).
- StockCode: Código alfanumérico único del producto o artículo comercial (SKU).
- Description: Nombre o descripción detallada del producto o transacción administrativa (ej. POSTAGE, AMAZON FEE).
- Quantity: Cantidad de unidades compradas o devueltas por transacción. Los valores negativos representan devoluciones de inventario.
- InvoiceDate: Fecha y hora en la que se generó la transacción o nota de crédito.
- UnitPrice: Precio unitario del producto expresado en moneda local (USD/GBP).
- CustomerID: Código numérico único identificador del cliente registrado.
- Country: País de origen o residencia desde donde el cliente realizó la orden.

# EN English

## Retail Sales and Returns Intelligence. Revenue Leakage Detection via Power Pivot and DAX

This project consisted of diagnostic analysis and the design of an executive analytical architecture on massive transactional data to identify revenue variability and audit the return rate in a multinational e-commerce platform. Following a rigorous data ingestion, cleansing, and typing process in Power Query (M), a dimensional model was built in Power Pivot powered by DAX measures to isolate the bias of cancellations on actual sales. Advanced temporal and geographic analyses were developed, uncovering the phenomenon of temporal lag, where massive post-holiday season returns exceeded current-period sales volume, revealing an inventory carryover effect from previous cycles.

The solution equips senior management and Operations, Finance, and Supply Chain teams with a high-level interactive Dashboard that transforms over half a million records into a tactical decision roadmap. Thanks to this dashboard, the company can transition from passive sales monitoring to proactive commercial risk management, enabling the auditing of the real impact of returns on petty cash, restructuring product return policies to mitigate capital leakage, and optimizing the expansion strategy in key international markets such as Netherlands, Ireland, and Germany.

### Tools and Data Process

![Microsoft Excel](https://img.shields.io/badge/Microsoft_Excel-3262A8?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Power Query](https://img.shields.io/badge/Power_Query-3262A8?style=for-the-badge&logo=powerbi&logoColor=black)
![Power Pivot](https://img.shields.io/badge/Power_Pivot-3262A8?style=for-the-badge&logo=microsoft&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-3262A8?style=for-the-badge&logo=microsoft&logoColor=white)
![Data Visualization](https://img.shields.io/badge/Data_Visualization-031796?style=for-the-badge)

### Key questions

- 📊 Executive Management and Finance (Strategy and Cash Flow)
1. What is the real volume of net revenue generated by the business after deducting the impact of returns?
2. What is the global capital leakage percentage due to returns, and does it remain within acceptable e-commerce margins?
3. How do returns impact cash flow during the first quarter (Q1) compared to year-end (Q4)?
- 🌍 Growth, Marketing, and International Expansion
4. If we exclude the dominant market (United Kingdom), which are the top 3 international countries by sales volume to focus acquisition campaigns on?
5. Are there international countries that, despite strong sales, exhibit abnormally high return rates that jeopardize ad spend profitability?
- 📦 Operations, Logistics, and Customer Service
6. In which months of the year does the operation suffer from the "temporal lag" phenomenon, where processed returns threaten to exceed monthly sales?
7. What is the real reach of the active customer base sustaining the company's transactional volume?
- 🗓️ Seasonal Analysis and Commercial Planning
8. How do purchasing behavior and return rates vary when comparing year-over-year performance from 2010 vs. 2011?
9. Which months represent the sales "low season" where the commercial team must activate promotions to stimulate demand?

### Methodology

- **Ingestion, cleansing, and structural typing in Power Query:** Ingestion of massive transactional volume into Power Query was executed, applying rigorous cleansing on raw data to fix source inconsistencies; non-commercial operational descriptions (AMAZON FEE, POSTAGE, inventory adjustments) were purged, and data types were reconfigured by assigning text format to stock/invoice codes (StockCode, InvoiceNo), currency decimal values to unit prices (UnitPrice), and native timestamps (DateTime), guaranteeing the technical integrity of the model.
- **Transaction isolation and credit note logic:** A conditional business rule was implemented to segment the nature of records, identifying regular invoices against returns/cancellations by detecting the 'C' prefix in the invoice identifier and negative values in quantity (Quantity < 0), establishing the syntactical foundation to isolate returns without corrupting gross totals.
- **Dimensional modeling and dynamic metrics development in DAX:** A robust data model was structured in Power Pivot by building optimized analytical measures in DAX; the SUMX function combined with FILTER was used to calculate absolute pure sales (Quantity > 0) and the consolidated return amount (ABS(Quantity)), integrating the DIVIDE function with error handling to obtain the real return rate (Return_Rate) and DISTINCTCOUNT to count the actual unique customer base.
- **Diagnosis of the temporal lag phenomenon:** Month-over-month temporal variation analysis was designed to audit atypical return spikes, identifying and documenting the post-holiday season inventory carryover effect (where returns processed in January from December purchases generated return rates exceeding 100% in specific products), allowing the diagnosis of bottlenecks in return windows without altering the mathematical integrity of the sources.
- **Geographic isolation and market ranking (Top 10):** Combined behavioral filters were configured in the visual layer to isolate the dominant market (United Kingdom) and evaluate international trade performance, enabling field-level multi-filtering to dynamically rank the Top 10 countries with the highest pure revenue volume (Total_only_sales), eliminating visual noise from marginal markets and rescaling comparison bars.
- **Executable layout and Dashboard UX/UI architecture:** The Excel canvas was transformed into an executive-level interactive interface by removing native spreadsheet elements (gridlines, headings, and formula bars), structuring floating KPI cards with contrasting corporate color palettes (Navy Blue for revenue and Soft Coral/Red for alerts), and linking horizontal data slicers by year, month, and country to enable seamless real-time analytical exploration.

### Data Dictionary

The Online Retail (Transactions) table:
- InvoiceNo: Unique alphanumeric code assigned to each transaction. Codes starting with the prefix 'C' indicate a cancellation or return (Credit Note).
- StockCode: Unique alphanumeric product or item code (SKU).
- Description: Detailed name or description of the product or administrative transaction (e.g., POSTAGE, AMAZON FEE).
- Quantity: Number of units purchased or returned per transaction. Negative values represent inventory returns.
- InvoiceDate: Date and timestamp when the transaction or credit note was generated.
- UnitPrice: Unit price of the product expressed in local currency (USD/GBP).
- CustomerID: Unique numerical identifier for the registered customer.
- Country: Country of origin or residence from where the customer placed the order.
