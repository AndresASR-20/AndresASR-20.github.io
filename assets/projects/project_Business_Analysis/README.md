# ES Español

## Optimización de gastos de distribuidora de entrada a eventos de entretenimiento

Showz es una empresa de venta de entradas de eventos. Anteriormente a la ejecución del proyecto, la empresa se encontraba en una situación de toma de decisiones en cuanto a la regulación de sus gastos de operación, buscando identificar el comportamiento y participación de sus fuentes de anuncios y dispositivos en los que se encuentra habilitada la plataforma de ventas de la empresa, con el propósito principal de que los descubrimientos generados permitan una claridad precisa para la toma de decisiones respecto a la optimización o descarte de fuentes de anuncios y dispositivos.

### Herramientas y tipo de proyecto
![Python](https://img.shields.io/badge/Python-3262A8?style=for-the-badge&logo=Python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-3262A8?style=for-the-badge&logo=pandas&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-3262A8?style=for-the-badge)
![Pyplot](https://img.shields.io/badge/Pyplot-3262A8?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-3262A8?style=for-the-badge)
![NumPy](https://img.shields.io/badge/NumPy-3262A8?style=for-the-badge)
![Jupyter Notebook](https://img.shields.io/badge/Jupyter_Notebook-3262A8?style=for-the-badge&logo=jupyter&logoColor=white)
![Limpieza de datos](https://img.shields.io/badge/Limpieza_de_datos-031796?style=for-the-badge)
![Transformación de datos](https://img.shields.io/badge/Transformación_de_datos-031796?style=for-the-badge)
![Visualización de datos](https://img.shields.io/badge/Visualización_de_datos-031796?style=for-the-badge)
![Análisis estadístico](https://img.shields.io/badge/Análisis_estadístico-031796?style=for-the-badge)
![Cálculo numérico](https://img.shields.io/badge/Cálculo_numérico-031796?style=for-the-badge)

### Preguntas clave

1. ¿Cómo los clientes usan el servicio?
2. ¿Cuándo empiezan a comprar?
3. ¿Cuánto dinero aporta cada cliente a la compañía?
4. ¿Cuándo los ingresos cubren el costo de adquisición de los clientes?

### Metodología

- Preprocesamiento de datos: Se limpiaron y estandarizaron los datos, eliminando inconsistencias y verificando la ausencia de duplicados y valores faltantes.
- Exploratory Data Analysis (EDA): Análisis de métricas para identificación de tendencias:
  - Tasa de conversión
  - Tamaño promedio de orden
  - LTV
  - CAC
  - ROMI

  y cada análisis de métricas de negocio se realiza a modo de comparación entre:
  - Fuentes de anuncios
  - Dispositivos habilitados para uso de plataforma (Touch y Desktop)
- Generación de visualizaciones de datos: Se definieron gráficos de histogramas, barras, mapas de calor; con la intención de contar con recursos que permitan al cliente el entendimiento más sencillo de las métricas y descubrimientos obtenidos.

### Conclusiones y recomendaciones
#### RECOMENDACIONES DE FUENTES/PLATAFORMAS 

- FUENTES ALTAMENTE RECOMENDADAS 🏆
  - FUENTE 1 - PRIORIDAD MÁXIMA

  Métricas clave: ROMI = 113.2%, CAC = 4.04, LTV = 1.12
  
  Fundamentación: Combina la mejor rentabilidad con eficiencia en costos
  
  Recomendación: INCREMENTAR presupuesto en 50-100%
  
  - FUENTE 2 - ALTA PRIORIDAD

  Métricas clave: ROMI = 43.7%, CAC = 9.05, LTV = 1.29
  
  Fundamentación: Rentable y genera el mayor LTV promedio
  
  Recomendación: INCREMENTAR presupuesto en 30-50%
  
- FUENTES A REEVALUAR CRÍTICAMENTE ⚠️
  - FUENTE 3 - ACCIÓN INMEDIATA REQUERIDA

  Métricas clave: ROMI = -70.0%, CAC = 14.74, Mayor volumen pero pérdidas masivas
  
  Fundamentación: A pesar de generar 9,587 clientes, produce pérdidas de 98,878
  
  Recomendación: SUSPENDER temporalmente y optimizar estrategia
  
- FUENTES A ELIMINAR O REDUCIR 🔻
  - FUENTES 4, 5, 9, 10

  Métricas clave: ROMI negativo (-11.4% a -30.9%)
  
  Fundamentación: Todas generan pérdidas consistentes
  
  Recomendación: REDUCIR presupuesto en 70% o ELIMINAR

### Diccionario de datos
La tabla costs_us (estadísticas de gastos de marketing):
- source_id: identificador de la fuente de anuncios.
- dt: fecha.
- costs: gastos en esta fuente de anuncios en este día.

La tabla orders_log_us (datos sobre pedidos):
- Uid: identificador único del usuario que realiza un pedido.
- Buy Ts: fecha y hora del pedido. Revenue: el ingreso de Showz por el pedido.

La tabla visits_log_us (registros del servidor con datos sobre las visitas al sitio web):
- Uid: identificador único del usuario.
- Device: dispositivo del usuario.
- Start Ts: fecha y hora de inicio de la sesión.
- End Ts: fecha y hora de término de la sesión.
- Source Id: identificador de la fuente de anuncios de la que proviene el usuario.

# EN English

## Expense Optimization for an Entertainment Event Ticket Distributor

Showz is a ticket sales company for events. Prior to the execution of the project, the company found itself in a decision-making situation regarding the regulation of its operating expenses, seeking to identify the behavior and share of its ad sources and devices on which the company's sales platform is enabled, with the primary purpose that the generated findings allow precise clarity for decision-making regarding the optimization or discarding of ad sources and devices.

### Tools & Data Process
![Python](https://img.shields.io/badge/Python-3262A8?style=for-the-badge&logo=Python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-3262A8?style=for-the-badge&logo=pandas&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-3262A8?style=for-the-badge)
![Pyplot](https://img.shields.io/badge/Pyplot-3262A8?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-3262A8?style=for-the-badge)
![NumPy](https://img.shields.io/badge/NumPy-3262A8?style=for-the-badge)
![Jupyter Notebook](https://img.shields.io/badge/Jupyter_Notebook-3262A8?style=for-the-badge&logo=jupyter&logoColor=white)
![Data Cleaning](https://img.shields.io/badge/Data_Cleaning-031796?style=for-the-badge)
![Data Transformation](https://img.shields.io/badge/Data_Transformation-031796?style=for-the-badge)
![Data Visualization](https://img.shields.io/badge/Data_Visualization-031796?style=for-the-badge)
![Stadistical Analysis](https://img.shields.io/badge/Statistical_Analysis-031796?style=for-the-badge)
![Numerical Calculus](https://img.shields.io/badge/Numerical_Calculation-031796?style=for-the-badge)

### Key questions

1. How do customers use the service?
2. When do they start buying?
3. How much money does each customer bring to the company?
4. When do revenues cover customer acquisition costs?

### Methodology

- Data preprocessing: Data was cleaned and standardized, removing inconsistencies and verifying the absence of duplicates and missing values.
- Exploratory Data Analysis (EDA): Metric analysis for trend identification:
  - Conversion rate
  - Average order size
  - LTV
  - CAC
  - ROMI

  and each business metric analysis is performed as a comparison between:
  - Ad sources
  - Devices enabled for platform use (Touch and Desktop)
- Data visualization generation: Histogram, bar, and heat map charts were defined; with the intention of having resources that allow the client an easier understanding of the metrics and findings obtained.

### Conclusions y recommendations
#### SOURCE/PLATFORM RECOMMENDATIONS 

- HIGHLY RECOMMENDED SOURCES 🏆
  - SOURCE 1 - TOP PRIORITY

  Key metrics: ROMI = 113.2%, CAC = 4.04, LTV = 1.12
  
  Rationale: Combines the best profitability with cost efficiency
  
  Recommendation: INCREASE budget by 50-100%
  
  - SOURCE 2 - HIGH PRIORITY

  Key metrics: ROMI = 43.7%, CAC = 9.05, LTV = 1.29
  
  Rationale: Profitable and generates the highest average LTV
  
  Recommendation: INCREASE budget by 30-50%
  
- SOURCES TO BE CRITICALLY RE-EVALUATED ⚠️
  - SOURCE 3 - IMMEDIATE ACTION REQUIRED

  Key metrics: ROMI = -70.0%, CAC = 14.74, Highest volume but massive losses
  
  Rationale: Despite generating 9,587 customers, it produces losses of 98,878
  
  Recommendation: SUSPEND temporarily and optimize strategy
  
- SOURCES TO ELIMINATE OR REDUCE 🔻
  - SOURCES 4, 5, 9, 10

  Key metrics: Negative ROMI (-11.4% to -30.9%)
  
  Rationale: All generate consistent losses
  
  Recommendation: REDUCE budget by 70% or ELIMINATE

### Data Dictionary
The table costs_us (marketing expense statistics):
- source_id: ad source identifier.
- dt: date.
- costs: expenses on this ad source on this day.

The table orders_log_us (data on orders):
- Uid: unique identifier of the user placing an order.
- Buy Ts: date and time of the order. Revenue: Showz's revenue from the order.

The table visits_log_us (server logs with data on website visits):
- Uid: unique identifier of the user.
- Device: user's device.
- Start Ts: session start date and time.
- End Ts: session end date and time.
- Source Id: identifier of the ad source from which the user comes.
