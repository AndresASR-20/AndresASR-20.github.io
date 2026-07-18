# ES Español

## Análisis de rendimiento de ventas y análisis de cohortes

Este proyecto consistió en el análisis estratégico y la centralización de datos transaccionales masivos de Microsoft SQL Server (T-SQL) para diagnosticar la retención de clientes y optimizar el portafolio comercial de un importante marketplace de e-commerce en América Latina. Tras un riguroso proceso de ingesta y tipado de datos en SSMS, se desarrollaron tres modelos de análisis avanzado: una matriz horizontal de cohortes que mide los ciclos de vida de los usuarios mediante pivoteo condicional; un ranking de "productos estrella" por categoría utilizando funciones de ventana (DENSE_RANK()) para mitigar riesgos de inventario; y un modelo de suavizado temporal con ROWS BETWEEN para calcular la media móvil de demanda de 7 días, aislando la volatilidad natural de los fines de semana.

La solución dota a la empresa de un activo analítico clave que transforma millones de registros en un mapa de decisiones directivas para los equipos de Growth Marketing, Logística y Compras. Gracias a este diagnóstico, el negocio puede transicionar de una gestión puramente intuitiva a una estrategia proactiva, permitiendo diseñar campañas de lealtad hiper-dirigidas a los productos estrella de mayor valor, predecir con exactitud la capacidad de distribución con los transportistas y redefinir los esfuerzos de retención de usuarios para blindar y potenciar los ingresos de la compañía.

### Herramientas y Proceso de Datos

![SQL](https://img.shields.io/badge/SQL-3262A8?style=for-the-badge)
![Microsoft SQL Server](https://img.shields.io/badge/microsoft_sql_server-3262A8?style=for-the-badge)
![Análisis exploratorio de datos](https://img.shields.io/badge/Análisis_exploratorio_de_datos-031796?style=for-the-badge)
![Análisis de tendencias](https://img.shields.io/badge/Análisis_de_tendencias-031796?style=for-the-badge)
![Limpieza de datos](https://img.shields.io/badge/Limpieza_de_datos-031796?style=for-the-badge)
![Transformación de datos](https://img.shields.io/badge/Transformación_de_datos-031796?style=for-the-badge)
![Análisis de cohortes](https://img.shields.io/badge/Análisis_de_cohortes-031796?style=for-the-badge)
![Análisis temporal](https://img.shields.io/badge/Análisis_temporal-031796?style=for-the-badge)
![Análisis financiero](https://img.shields.io/badge/Análisis_financiero-031796?style=for-the-badge)

### Preguntas clave

1. ¿Los clientes que compran por primera vez en Olist regresan a comprar en los meses siguientes, o somos una plataforma de "una sola compra"? ¿Ha mejorado la retención de los clientes que adquirimos en 2017 en comparación con los de 2018? 
2. Si tuviéramos que hacer campañas de marketing hiper-segmentadas por categoría de producto, ¿cuáles son los 3 productos específicos (por ID) que están generando el mayor volumen de ventas en cada categoría para ponerlos en portada? ¿Hay categorías dominadas por un solo producto o la competencia interna es variada?
3. El volumen de ventas diario es sumamente ruidoso y tiene picos extraños (como el Black Friday). ¿Cómo podemos ver la tendencia real "suavizada" de las ventas diarias para que el equipo de operaciones pueda planificar la capacidad logística de los transportistas sin alarmarse por picos de un solo día?

### Conclusiones y recomendaciones

- **Reestructuración de campañas hacia el ticket de alto valor**: Reorientar el presupuesto de pauta digital del equipo de Growth Marketing para promocionar de forma prioritaria los productos identificados en el Top 3 por facturación (como el ID líder de `health_beauty` que recauda más de $63k USD), priorizando el margen de ganancia por sobre los artículos que únicamente mueven volumen logístico de bajo costo.
- **Diversificación de proveedores en categorías monopolizadas**: Iniciar mesas de negociación para dar de alta a nuevos vendedores dentro de la categoría de Cama y Baño (`bed_bath_table`), mitigando el riesgo crítico de centralización donde el producto estrella número uno absorbe casi la totalidad de la demanda y expone a la plataforma a un desplome de ingresos ante eventuales rupturas de inventario.
- **Implementación de incentivos de lealtad post-compra (Cross-Selling)**: Diseñar una estrategia de automatización de correos (*Email Marketing*) y cupones de descuento válidos exclusivamente para los 30 y 60 días posteriores a la primera transacción, buscando romper la inercia del modelo actual donde menos del 1% de los usuarios de una cohorte regresa a realizar una segunda compra en el corto plazo.
- **Planificación de capacidad logística basada en demanda suavizada**: Desplegar el modelo de media móvil de 7 días (`Media_Movil_Ordenes_7D`) en los tableros operativos del centro de distribución, permitiendo al equipo de logística predecir y contratar la flota de transportistas necesaria según la tendencia real de la demanda, aislando el ruido y las falsas alarmas provocadas por las caídas naturales de volumen los fines de semana.
- **Fidelización y blindaje de sellers estratégicos**: Desarrollar un programa de beneficios exclusivos y comisiones reducidas para los vendedores que controlan los productos del Top 1 en categorías de alta competencia y fragmentadas (como `watches_gifts`), asegurando la permanencia de sus catálogos en Olist frente a la tentación de migrar hacia plataformas de la competencia.
- **Aislamiento y auditoría de órdenes rezagadas al cierre de mes**: Establecer un protocolo de revisión conjunta entre el equipo de Operaciones y Atención al Cliente durante las últimas semanas de cada mes, con el fin de destrabar y acelerar la transición al estado 'delivered' de los pedidos pendientes (fenómeno crítico observado en agosto de 2018), evitando que los desfases de entrega impacten negativamente la percepción de marca y el registro analítico de recompra.
- **Transición a un ecosistema de portafolio dinámico**: Automatizar el script de jerarquización (`DENSE_RANK`) para que se ejecute de forma estacional (trimestral), permitiendo al equipo comercial detectar de forma proactiva qué productos están perdiendo tracción frente a nuevas tendencias y garantizando que los banners principales del marketplace siempre muestren los artículos con la conversión orgánica más alta del momento.

### Metodología

- **Ingesta, limpieza y tipado estructural de datos**: Se ejecutó la importación de archivos planos a **SSMS** y se corrigieron inconsistencias de origen mediante la reconfiguración de tipos de datos complejos, transformando identificadores únicos a cadenas (`VARCHAR`), montos comerciales a valores decimales (`DECIMAL(10,2)`) y marcas de tiempo a formatos de fecha nativos (`DATETIME`), garantizando la integridad de los cálculos temporales.
- **Aislamiento cronológico y truncamiento temporal**: Se implementó una lógica de normalización de fechas utilizando la combinación matemática de las funciones `DATEADD` y `DATEDIFF` sobre el primer registro de compra (`MIN`), logrando truncar los timestamps crudos al primer día de su mes correspondiente para el establecimiento exacto de los periodos de inicio.
- **Modelado analítico de cohortes y pivoteo condicional**: Se estructuraron expresiones de tabla comunes (CTEs) secuenciales para calcular el índice de madurez del cliente y, mediante sentencias avanzadas de agregación condicional (`COUNT DISTINCT` con `CASE WHEN`), se transformó un flujo de registros vertical en una matriz horizontal que mapea el ciclo de vida y el goteo de retención de los usuarios.
- **Particionado y jerarquización de inventario**: Se unificaron las dimensiones de catálogo con los registros de órdenes mediante `JOINs` múltiples, aplicando la función de ventana analítica `DENSE_RANK() OVER (PARTITION BY ... ORDER BY ...)` para segmentar y extraer de forma compacta el Top 3 de productos con mayor recaudación por cada categoría de negocio sin omitir empates justos.
- **Suavizado de la demanda mediante Window Framing**: Se desarrolló un modelo de agregación móvil diario aplicando la cláusula de restricción de filas `ROWS BETWEEN 6 PRECEDING AND CURRENT ROW`, aislando eficazmente la volatilidad, el ruido transaccional y la estacionalidad natural de los fines de semana para exponer la tendencia real de la capacidad logística.
- **Filtrado y depuración del estado de operación**: Se integraron reglas de negocio rigurosas en la capa de persistencia mediante filtros de condición (`WHERE order_status = 'delivered'`), mitigando el sesgo de datos causado por órdenes canceladas o pendientes y asegurando que las conclusiones de retención y facturación se basaran exclusivamente en ingresos reales consolidados.

### Diccionario de datos
La tabla olist_orders_dataset:
- order_id: El código de identificación único asignado a cada orden de compra.
- customer_id: El identificador asignado a cada orden que vincula la transacción con una locación física específica del cliente.
- order_status: El estado actual del pedido en su ciclo de vida, utilizado críticamente para filtrar registros entregados (`delivered`).
- order_purchase_timestamp: La marca de tiempo exacta con hora, minuto y segundo en la que el usuario realizó la compra en la plataforma.
- order_approved_at: La marca de tiempo que registra el momento exacto en que se aprobó el pago de la orden.
- order_delivered_carrier_date: La fecha y hora en la que el operador logístico/transportista recolectó el paquete.
- order_delivered_customer_date: La fecha oficial en la que el producto fue entregado físicamente en el domicilio del cliente.
- order_estimated_delivery_date: La fecha estimada de entrega que se le prometió originalmente al cliente al momento de la compra.

La tabla olist_order_items_dataset:
- order_id: El código de identificación de la orden al que pertenece el artículo, utilizado para conectar los productos con sus transacciones.
- order_item_id: El número secuencial que identifica la cantidad de artículos incluidos dentro de una misma orden.
- product_id: El identificador alfanumérico único para cada producto específico dentro del catálogo del marketplace.
- seller_id: El identificador único del vendedor que provee y publica el producto.
- shipping_limit_date: La fecha límite establecida para que el vendedor entregue el paquete al transportista logístico.
- price: El costo o valor monetario individual de cada artículo vendido, base estructural para el cálculo de ingresos y la media móvil.
- freight_value: El costo de envío o flete calculado para el traslado de ese artículo en particular.

La tabla olist_products_dataset:
- product_id: El código de identificación único del producto, clave primaria utilizada para enlazar el catálogo con las ventas de ítems.
- product_category_name: El nombre original de la categoría comercial a la que pertenece el artículo, registrado nativamente en portugués.
- product_name_lenght: La longitud en caracteres del nombre comercial del producto.
- product_description_lenght: La cantidad de caracteres utilizados en la descripción detallada del artículo.
- product_photos_qty: El número total de fotografías o imágenes publicadas en la ficha técnica del producto.
- product_weight_g: El peso físico del artículo expresado en gramos.
- product_length_cm: La longitud o largo físico del producto medido en centímetros.
- product_height_cm: La altura física del empaque o artículo medida en centímetros.
- product_width_cm: El ancho físico medido en centímetros.

La tabla product_category_name_translation:
- product_category_name: El nombre de la categoría en el idioma nativo de origen (portugués), utilizado como puente de unión.
- product_category_name_english: La traducción oficial al inglés de la categoría, utilizada como etiqueta final para la jerarquización del portafolio.

La tabla olist_customers_dataset:
- customer_id: El identificador único por transacción del cliente (vinculado directamente a cada orden).
- customer_unique_id: El identificador maestro y permanente de cada cliente, clave fundamental para calcular la recurrencia real en el análisis de cohortes.
- customer_zip_code_prefix: Los primeros dígitos del código postal correspondiente a la dirección del comprador.
- customer_city: El nombre de la ciudad donde reside el usuario.
- customer_state: Las siglas del estado o provincia de residencia dentro del territorio nacional.

La tabla olist_order_payments_dataset:
- order_id: El código de identificación de la orden asociado al flujo de caja del pago.
- payment_sequential: El número secuencial que registra la cantidad de métodos de pago combinados utilizados para liquidar una sola orden.
- payment_type: La modalidad o pasarela de pago elegida por el cliente (ej. tarjeta de crédito, boleto bancario, voucher, tarjeta de débito).
- payment_installments: La cantidad de mensualidades o cuotas en las que el usuario decidió diferir el costo de la compra.
- payment_value: El monto total transaccionado y liquidado en esa transacción de pago específica.

La tabla olist_order_reviews_dataset:
- review_id: El identificador único de la evaluación o reseña emitida por el cliente.
- order_id: El código de la orden de compra asociada a la encuesta de satisfacción.
- review_score: La calificación numérica otorgada por el usuario en una escala de satisfacción del 1 al 5.
- review_comment_title: El título o encabezado del comentario de texto dejado por el comprador.
- review_comment_message: El mensaje detallado u opinión escrita sobre su experiencia de compra y entrega.
- review_creation_date: La fecha en la que se envió la encuesta de satisfacción digital al consumidor.
- review_answer_timestamp: La fecha y hora exacta en la que el cliente respondió y envió su reseña.

La tabla olist_sellers_dataset:
- seller_id: El código de identificación único que tiene cada vendedor o comercio registrado en el marketplace.
- seller_zip_code_prefix: Los dígitos iniciales del código postal correspondientes a la ubicación de los almacenes del vendedor.
- seller_city: La ciudad de origen desde donde opera y despacha el comercio afiliado.
- seller_state: El estado de procedencia del vendedor dentro del país.

# EN English

## Sales Performance Analysis and Cohort Analysis

This project consisted of the strategic analysis and centralization of massive transactional data from Microsoft SQL Server (T-SQL) to diagnose customer retention and optimize the commercial portfolio of a major e-commerce marketplace in Latin America. Following a rigorous data ingestion and typing process in SSMS, three advanced analysis models were developed: a horizontal cohort matrix that measures user lifecycles through conditional pivoting; a ranking of "star products" by category using window functions (DENSE_RANK()) to mitigate inventory risks; and a temporal smoothing model using ROWS BETWEEN to calculate the 7-day moving average of demand, isolating the natural volatility of weekends.

The solution provides the company with a key analytical asset that transforms millions of records into a managerial decision-making map for the Growth Marketing, Logistics, and Purchasing teams. Thanks to this diagnosis, the business can transition from purely intuitive management to a proactive strategy, enabling the design of hyper-targeted loyalty campaigns for the highest-value star products, accurately predicting distribution capacity with carriers, and redefining user retention efforts to safeguard and boost the company's revenue.

### Tools and Data Processes

![SQL](https://img.shields.io/badge/SQL-3262A8?style=for-the-badge)
![Microsoft SQL Server](https://img.shields.io/badge/microsoft_sql_server-3262A8?style=for-the-badge)
![Exploratory Data Analysis](https://img.shields.io/badge/exploratoy_data_analysis-031796?style=for-the-badge)
![Trends Analysis](https://img.shields.io/badge/trends_analysis-031796?style=for-the-badge)
![Data Cleaning](https://img.shields.io/badge/data_cleaning-031796?style=for-the-badge)
![Data Transformation](https://img.shields.io/badge/data_transformation-031796?style=for-the-badge)
![Cohorts Analysis](https://img.shields.io/badge/cohorts_analysis-031796?style=for-the-badge)
![Temporarily Analysis](https://img.shields.io/badge/temporarily_analysis-031796?style=for-the-badge)
![Financial Analysis](https://img.shields.io/badge/financial_analysis-031796?style=for-the-badge)

### Key Questions

1. Do first-time customers on Olist return to buy in the following months, or are we a "one-time purchase" platform? Has retention improved for customers acquired in 2017 compared to those in 2018? 
2. If we were to run hyper-segmented marketing campaigns by product category, what are the top 3 specific products (by ID) generating the highest sales volume in each category to feature on the homepage? Are there categories dominated by a single product, or is the internal competition diverse?
3. Daily sales volume is highly noisy and experiences strange peaks (such as Black Friday). How can we view the actual "smoothed" trend of daily sales so that the operations team can plan carrier logistics capacity without being alarmed by single-day spikes?

### Conclusions and Recommendations

- **Campaign restructuring toward high-value tickets**: Reorient the digital advertising budget of the Growth Marketing team to preferentially promote products identified in the Top 3 by revenue (such as the leading ID in `health_beauty` which generates over $63k USD), prioritizing profit margins over items that only drive low-cost logistics volume.
- **Supplier diversification in monopolized categories**: Initiate negotiation meetings to onboard new sellers within the Bed and Bath (`bed_bath_table`) category, mitigating the critical centralization risk where the number-one star product absorbs nearly the entirety of demand and exposes the platform to a revenue collapse in the event of stockouts.
- **Implementation of post-purchase loyalty incentives (Cross-Selling)**: Design an automation strategy for email marketing and discount coupons valid exclusively for the 30 and 60 days following the first transaction, aiming to break the inertia of the current model where less than 1% of a cohort's users return to make a second purchase in the short term.
- **Logistics capacity planning based on smoothed demand**: Deploy the 7-day moving average model (`Media_Movil_Ordenes_7D`) on the distribution center's operational dashboards, allowing the logistics team to predict and contract the necessary carrier fleet based on the real demand trend, isolating noise and false alarms caused by natural weekend volume drops.
- **Fidelization and safeguarding of strategic sellers**: Develop an exclusive benefits and reduced commissions program for sellers controlling Top 1 products in highly competitive and fragmented categories (such as `watches_gifts`), ensuring the permanence of their catalogs on Olist against the temptation to migrate to competitor platforms.
- **Isolation and auditing of lagging orders at month-end**: Establish a joint review protocol between the Operations and Customer Service teams during the final weeks of each month to unlock and accelerate the transition to 'delivered' status for pending orders (a critical phenomenon observed in August 2018), preventing delivery lags from negatively impacting brand perception and analytical repurchase tracking.
- **Transition to a dynamic portfolio ecosystem**: Automate the ranking script (`DENSE_RANK`) to run on a seasonal (quarterly) basis, allowing the commercial team to proactively detect which products are losing traction against new trends and ensuring that the marketplace's main banners always display the items with the highest organic conversion of the moment.

### Methodology

- **Data ingestion, cleaning, and structural typing**: Flat file importation to **SSMS** was executed, and source inconsistencies were corrected by reconfiguring complex data types, transforming unique identifiers into strings (`VARCHAR`), commercial amounts into decimal values (`DECIMAL(10,2)`), and timestamps into native date formats (`DATETIME`), guaranteeing the integrity of time-based calculations.
- **Chronological isolation and temporal truncation**: Date normalization logic was implemented using the mathematical combination of the `DATEADD` and `DATEDIFF` functions on the first purchase record (`MIN`), successfully truncating raw timestamps to the first day of their corresponding month for the exact establishment of starting periods.
- **Analytical cohort modeling and conditional pivoting**: Sequential common table expressions (CTEs) were structured to calculate the customer maturity index, and through advanced conditional aggregation statements (`COUNT DISTINCT` with `CASE WHEN`), a vertical record stream was transformed into a horizontal matrix that maps user lifecycles and retention leakage.
- **Inventory partitioning and ranking**: Catalog dimensions were unified with order records via multiple `JOINs`, applying the analytical window function `DENSE_RANK() OVER (PARTITION BY ... ORDER BY ...)` to compactly segment and extract the Top 3 highest-grossing products for each business category without omitting fair ties.
- **Demand smoothing via Window Framing**: A daily moving aggregation model was developed by applying the row restriction clause `ROWS BETWEEN 6 PRECEDING AND CURRENT ROW`, effectively isolating volatility, transactional noise, and the natural weekly seasonality to expose the real trend of logistics capacity.
- **Filtering and operational status debugging**: Rigorous business rules were integrated into the persistence layer using condition filters (`WHERE order_status = 'delivered'`), mitigating data bias caused by canceled or pending orders and ensuring that retention and billing conclusions were based exclusively on actual consolidated revenue.

### Data Dictionary
The olist_orders_dataset table:
- order_id: The unique identification code assigned to each purchase order.
- customer_id: The identifier assigned to each order that links the transaction to a specific physical location of the customer.
- order_status: The current status of the order in its lifecycle, critically used to filter completed transactions (`delivered`).
- order_purchase_timestamp: The exact timestamp with hour, minute, and second when the user made the purchase on the platform.
- order_approved_at: The timestamp that records the exact moment the order payment was approved.
- order_delivered_carrier_date: The date and time when the logistics carrier collected the package.
- order_delivered_customer_date: The official date when the product was physically delivered to the customer's address.
- order_estimated_delivery_date: The estimated delivery date originally promised to the customer at the time of purchase.

The olist_order_items_dataset table:
- order_id: The order identification code to which the item belongs, used to connect products with their transactions.
- order_item_id: The sequential number identifying the number of items included within the same order.
- product_id: The unique alphanumeric identifier for each specific product within the marketplace catalog.
- seller_id: The unique identifier of the seller who provides and publishes the product.
- shipping_limit_date: The deadline set for the seller to hand over the package to the logistics carrier.
- price: The cost or individual monetary value of each item sold, serving as the structural base for revenue and moving average calculations.
- freight_value: The shipping cost or freight calculated for the transport of that particular item.

The olist_products_dataset table:
- product_id: The unique product identification code, the primary key used to link the catalog with item sales.
- product_category_name: The original name of the commercial category to which the item belongs, natively recorded in Portuguese.
- product_name_length: The length in characters of the product's commercial name.
- product_description_length: The amount of characters used in the detailed description of the item.
- product_photos_qty: The total number of photographs or images published in the product's technical sheet.
- product_weight_g: The physical weight of the item expressed in grams.
- product_length_cm: The physical length or long dimension of the product measured in centimeters.
- product_height_cm: The physical height of the package or item measured in centimeters.
- product_width_cm: The physical width measured in centimeters.

The product_category_name_translation table:
- product_category_name: The name of the category in the native source language (Portuguese), used as a join bridge.
- product_category_name_english: The official English translation of the category, used as the final label for portfolio hierarchy.

The olist_customers_dataset table:
- customer_id: The unique identifier per transaction for the customer (directly linked to each order).
- customer_unique_id: The master and permanent identifier for each customer, a fundamental key to calculate actual recurrence in the cohort analysis.
- customer_zip_code_prefix: The initial digits of the postal code corresponding to the buyer's address.
- customer_city: The name of the city where the user resides.
- customer_state: The acronym of the state or province of residence within the national territory.

The olist_order_payments_dataset table:
- order_id: The order identification code associated with the payment cash flow.
- payment_sequential: The sequential number recording the amount of combined payment methods used to settle a single order.
- payment_type: The payment method or gateway chosen by the customer (e.g., credit card, boleto bancario, voucher, debit card).
- payment_installments: The number of monthly installments or quotas in which the user decided to defer the purchase cost.
- payment_value: The total amount transacted and settled in that specific payment transaction.

The olist_order_reviews_dataset table:
- review_id: The unique identifier of the review or rating issued by the customer.
- order_id: The order code associated with the satisfaction survey.
- review_score: The numerical rating granted by the user on a satisfaction scale from 1 to 5.
- review_comment_title: The title or heading of the text comment left by the buyer.
- review_comment_message: The detailed message or written opinion about their buying and delivery experience.
- review_creation_date: The date when the digital satisfaction survey was sent to the consumer.
- review_answer_timestamp: The exact date and time when the customer responded and submitted their review.

The olist_sellers_dataset table:
- seller_id: The unique identification code assigned to each registered seller or business in the marketplace.
- seller_zip_code_prefix: The initial digits of the postal code corresponding to the location of the seller's warehouses.
- seller_city: The city of origin from where the affiliated business operates and dispatches.
- seller_state: The state of origin of the seller within the country.
