# ES Español

## Dashboard para análisis ejecutivo y comercial de ventas para tienda online 

Este proyecto consistió en el diseño e implementación de un dashboard interactivo en Power BI para una tienda en línea (starter) en etapa de crecimiento continuo. El objetivo principal fue centralizar y estructurar la información proveniente de dos fuentes clave de la empresa: el registro general de ventas (que detalla fechas, clientes y ubicaciones geográficas) y el desglose de cada orden (que desmenuza montos, ganancias, métodos de pago y la jerarquía de categorías y subcategorías de productos). Con esta base, se transformaron los datos crudos en un ecosistema de visualización unificado que equilibra un enfoque ejecutivo de alto nivel con un análisis comercial profundamente operativo.

La solución permite al negocio supervisar continuamente su estatus de ventas mediante el seguimiento de KPIs minoristas críticos como el total de productos vendidos, el valor de venta promedio, el margen de ganancia y el promedio de artículos por transacción. Para responder a las necesidades estratégicas de la empresa, el cuadro de mando fue dotado de herramientas dinámicas que explican el comportamiento temporal y geográfico de los ingresos, la segmentación del consumo por género mediante filtros interactivos y el nivel de participación real de cada categoría en el catálogo. Como resultado, el negocio ahora cuenta con una herramienta clave para agilizar la toma de decisiones y detectar nuevas oportunidades de mercado.

### Herramientas y Proceso de Datos

![Power BI](https://img.shields.io/badge/Power_BI-3262A8?style=for-the-badge)
![Power Query](https://img.shields.io/badge/Power_Query-3262A8?style=for-the-badge)
![Visualización de datos](https://img.shields.io/badge/Visualización_de_datos-031796?style=for-the-badge)
![Dashboards](https://img.shields.io/badge/Dashboards-031796?style=for-the-badge)
![KPIs](https://img.shields.io/badge/KPI-031796?style=for-the-badge)
![Métricas de negocio](https://img.shields.io/badge/Métricas_de_Negocio-031796?style=for-the-badge)
![StoryTelling](https://img.shields.io/badge/Storytelling-031796?style=for-the-badge)

### Preguntas clave

1. ¿Cómo se comportan las métricas clave del negocio?
2. ¿Cómo se comportan las ventas a través del tiempo? ¿Existen comportamientos inusuales por festividades o temporada del año?
3. ¿Cómo es el comportamiento geográfico de las ventas? ¿Dónde se vende más y dónde se vende menos (hablando de cantidad de órdenes y total vendido)?
4. ¿Qué categorías tienen más venta y cuáles se vende poco?
5. ¿Cuál es el comportamiento de ventas por género? ¿Qué categorías prefiere cada género?

### Metodología

- **Generación de cards para métricas clave de negocio**: Se genera una visualización de valores de métricas clave (venta total, venta por orden promedio, ganancia total, ganancia por orden promedio, porcentaje de margen) para compresión ágil del estatus del negocio.
- **Generación de cards para métricas clave de área comercial**: Se genera una visualización de valores de métricas clave (total artículos vendidos, promedio de cantidad de artículos por orden) para compresión ágil del comportamiento de las ventas desde un enfoque comercial.
- **Generación de gráfico de comportamiento de ventas-ganancias en el tiempo**: Se genera una visualización de gráfico de líneas que permite entender ágilmente cómo han evolucionado las ventas y ganancias a través del tiempo.
- **Generación de gráfico de distribución de ventas geográficamente**: Se genera una visualización de gráfico de mapa en el cual se puede percibir, acorde al tamaño del círculo, dónde se han generado más ventas y, acorde a la tonalidad del color, dónde se ha vendido más.
- **Generación de gráfico de comportamiento de ventas-ganancias por género en el tiempo**: Se genera una visualización de gráfico de líneas que permite entender ágilmente cómo han evolucionado las ventas por género a través del tiempo.
- **Generación de gráfico de comportamiento de artículos vendidos por categoría-subcategoría**: Se genera una visualización de gráfico de barras que permite entender ágilmente la participación de cada categoría y cada subcategoría dentro del total de artículos vendidos por la empresa.
- **Creación de botones, deslizadores y listas filtradoras**: Se crearon elementos visuales para permitir dashboards dinámicos que puedan filtrar la información acorde a fechas, estados y género, que permitan generar un análisis más profundo del comportamiento del negocio.

### Diccionario de datos
La tabla Orders:
- Order ID: la clave primaria
- Order Date: fecha de la orden
- CustomerName: nombre del cliente
- State: estado de proveniencia de la orden
- City: ciudad de proveniencia de la orden

La tabla Details:
- Order ID: la clave primaria
- Amount: total de los productos comprados
- Profit: ganancia generada
- Quantity: cantidad de artículos agregados
- Category: categoría de los artículos agregados
- Sub-Category: subcategoría de los artículos agregados
- PaymentMode: método de pago

La tabla CustomerGenere:
- CustomerName: Nombre del cliente
- Genere: Género del cliente

# EN English

## Dashboard for executive and commercial sales analysis for online store 

This project consisted of the design and implementation of an interactive dashboard in Power BI for an online store (starter) in a stage of continuous growth. The main objective was to centralize and structure the information coming from two key sources of the company: the general sales record (which details dates, customers, and geographic locations) and the breakdown of each order (which breaks down amounts, profits, payment methods, and the hierarchy of product categories and subcategories). With this base, raw data were transformed into a unified visualization ecosystem that balances a high-level executive approach with a deeply operational commercial analysis.

The solution allows the business to continuously monitor its sales status through the tracking of critical retail KPIs such as total products sold, average sales value, profit margin, and the average number of items per transaction. To respond to the strategic needs of the company, the dashboard was equipped with dynamic tools that explain the temporal and geographical behavior of revenues, consumption segmentation by gender through interactive filters, and the level of real participation of each category in the catalog. As a result, the business now has a key tool to streamline decision-making and detect new market opportunities.

### Tools and Data Process

![Power BI](https://img.shields.io/badge/Power_BI-3262A8?style=for-the-badge)
![Power Query](https://img.shields.io/badge/Power_Query-3262A8?style=for-the-badge)
![Data Visualization](https://img.shields.io/badge/Data_Visualization-031796?style=for-the-badge)
![Dashboards](https://img.shields.io/badge/Dashboards-031796?style=for-the-badge)
![KPIs](https://img.shields.io/badge/KPI-031796?style=for-the-badge)
![Business Metrics](https://img.shields.io/badge/Business_Metrics-031796?style=for-the-badge)
![StoryTelling](https://img.shields.io/badge/Storytelling-031796?style=for-the-badge)

### Key questions

1. How do the key business metrics behave?
2. How do sales behave over time? Are there unusual behaviors due to holidays or season of the year?
3. How is the geographical behavior of sales? Where is more sold and where is less sold (talking about number of orders and total sold)?
4. Which categories have more sales and which are sold little?
5. What is the sales behavior by gender? Which categories does each gender prefer?

### Methodology

- **Generation of cards for key business metrics**: A visualization of key metric values (total sale, average sale per order, total profit, average profit per order, margin percentage) is generated for agile understanding of the business status.
- **Generation of cards for key commercial area metrics**: A visualization of key metric values (total items sold, average quantity of items per order) is generated for agile understanding of sales behavior from a commercial focus.
- **Generation of graph of sales-profits behavior over time**: A line graph visualization is generated that allows to easily understand how sales and profits have evolved over time.
- **Generation of graph of sales distribution geographically**: A map graph visualization is generated in which it can be perceived, according to the size of the circle, where more sales have been generated and, according to the color shade, where more has been sold.
- **Generation of graph of sales-profits behavior by gender over time**: A line graph visualization is generated that allows to easily understand how sales by gender have evolved over time.
- **Generation of graph of behavior of items sold by category-subcategory**: A bar graph visualization is generated that allows to easily understand the participation of each category and each subcategory within the total items sold by the company.
- **Creation of buttons, sliders, and filtering lists**: Visual elements were created to allow dynamic dashboards that can filter information according to dates, states, and gender, allowing to generate a deeper analysis of business behavior.

### Data Dictionary
The Orders table:
- Order ID: the primary key
- Order Date: order date
- CustomerName: customer name
- State: state of origin of the order
- City: city of origin of the order

The Details table:
- Order ID: the primary key
- Amount: total of products purchased
- Profit: profit generated
- Quantity: quantity of items added
- Category: category of items added
- Sub-Category: subcategory of items added
- PaymentMode: payment method

The CustomerGenere table:
- CustomerName: Customer name
- Genere: Customer gender
