# ES Español

## Análisis de tendencias y patrones de cancelación en servicio de suscripción para empresa de telecomunicaciones

Este proyecto consistió en el análisis estratégico y la optimización del ecosistema de retención de clientes para una compañía de telecomunicaciones en expansión. El objetivo principal fue centralizar y estructurar la información masiva proveniente de su base de datos de suscriptores (que detalla perfiles demográficos, antigüedad, tipos de contrato y métodos de pago) junto con el desglose del consumo de su suite de servicios avanzados (conectividad por DSL y fibra óptica, herramientas de ciberseguridad, soporte técnico y plataformas de streaming). Con esta base de datos crudos, se implementó un proceso riguroso de limpieza y transformación en PostgreSQL, convirtiendo registros inconsistentes en un entorno analítico unificado que equilibra un diagnóstico financiero de alto nivel con un análisis del comportamiento operativo de los usuarios.

La solución permite al negocio supervisar continuamente su salud comercial mediante el seguimiento de KPIs de retención críticos como la tasa de Churn global, el impacto en ingresos mensuales perdidos, el valor de vida acumulado (Customer Lifetime Value) y la densidad de adopción de servicios por usuario. Para responder a las necesidades estratégicas de la empresa, el análisis fue estructurado para identificar los principales focos rojos de la operación. Como resultado del proyecto, se diseñó e implementó un modelo automatizado de Alerta Temprana (Early Warning) en SQL que aísla de forma proactiva a los 500 clientes activos con mayor probabilidad de abandono según sus patrones de consumo. Gracias a esto, el negocio ahora cuenta con un activo analítico clave para transicionar de una postura reactiva a una estrategia proactiva, agilizando la toma de decisiones comerciales y permitiendo al equipo de Marketing y Customer Success desplegar campañas de lealtad hiper-dirigidas para blindar los ingresos de la compañía.

### Herramientas y Proceso de Datos

![SQL](https://img.shields.io/badge/SQL-3262A8?style=for-the-badge)
![Postgre SQL](https://img.shields.io/badge/PostgreSQL-3262A8?style=for-the-badge)
![Análisis exploratorio de datos](https://img.shields.io/badge/Análisis_exploratorio_de_datos-031796?style=for-the-badge)
![Análisis de tendencias](https://img.shields.io/badge/Análisis_de_tendencias-031796?style=for-the-badge)
![Limpieza de datos](https://img.shields.io/badge/Limpieza_de_datos-031796?style=for-the-badge)
![Transformación de datos](https://img.shields.io/badge/Transformación_de_datos-031796?style=for-the-badge)
![Modelado Lógico y Condicional](https://img.shields.io/badge/Modelado_Lógico_y_Condicional-031796?style=for-the-badge)
![Análisis financiero](https://img.shields.io/badge/Análisis_financiero-031796?style=for-the-badge)

---

### Preguntas clave

- Diagnóstico de Impacto Financiero e Identificación del Problema
1. ¿Cuál es la tasa de Churn global actual de la compañía y cuánto dinero en ingresos mensuales (MonthlyCharges) representa perder a estos clientes?
2. Si analizamos el histórico total (TotalCharges), ¿cuánto dinero han dejado de percibir los clientes que ya abandonaron la empresa en comparación con el valor total acumulado de los que siguen activos?
- Análisis de Portafolio de Servicios (Saturación y Lealtad)
3. Los clientes que contratan internet de Fibra Óptica (Fiber optic), ¿tienen una tasa de Churn más alta o más baja que los que usan DSL? ¿A qué crees que se deba económicamente considerando sus cargos mensuales promedio?
4. ¿El soporte técnico (TechSupport) y la seguridad en línea (OnlineSecurity) realmente retienen clientes? Compara la tasa de Churn de los clientes que tienen estos servicios activados frente a los que no.
5. ¿Cuántos servicios adicionales consumen en promedio los clientes leales frente a los que cancelan? (Servicios a evaluar: OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, StreamingMovies).
- Operaciones y Ciclo de Vida del Cliente
6. ¿Cuál es la distribución de antigüedad (tenure) de los clientes que se van? ¿Existe un "mes crítico" o periodo de tiempo (ej. los primeros 6 meses) donde ocurra la mayor parte de las cancelaciones?
7. ¿Cómo afecta el tipo de contrato (Contract) al Churn? Calcula el porcentaje de abandono para contratos Mes a Mes (Month-to-month) vs. Contratos a 1 y 2 años.
- Estrategia de Canales y Facturación (Marketing & Finanzas)
8. ¿El método de pago influye en la deserción? Calcula el Churn Rate desglosado por cada PaymentMethod. ¿Los métodos automáticos (tarjeta/banco) son más efectivos para retener que el cheque electrónico?
9. ¿Los clientes con facturación electrónica (PaperlessBilling = Yes) son más propensos al Churn que los que reciben factura física?
- Alerta Temprana (Enfoque Predictivo)
10. Genera un listado con el customerID de los Top 500 clientes activos con mayor riesgo de Churn para enviarles una oferta mañana por la mañana.

### Conclusiones y recomendaciones

- **Migración contractual proactiva**: Implementar campañas de incentivos financieros u operativos (como duplicar la velocidad de internet o regalar meses de servicios de streaming) dirigidas exclusivamente a clientes en modalidad "Mes a Mes", motivándolos a firmar un compromiso a 1 o 2 años para desplomar su tasa de Churn del 42% a menos del 11%.
- **Empaquetamiento preventivo de servicios de valor agregado**: Configurar paquetes comerciales que incluyan Soporte Técnico (`TechSupport`) y Seguridad en Línea (`OnlineSecurity`) de forma gratuita por los primeros meses o integrados nativamente en los planes de Fibra Óptica, aprovechando que los usuarios con estos servicios muestran una retención tres veces mayor.
- **Auditoría de infraestructura y expectativas en Fibra Óptica**: Iniciar una revisión técnica urgente y un análisis de satisfacción en las zonas con cobertura de Fibra Óptica, dado que, a pesar de ser el servicio con mayor facturación promedio ($93 USD), registra una tasa de deserción crítica que supera el 40%.
- **Domiciliación e incentivos de pago automático**: Lanzar un programa de bonificación única (ej. un descuento de $5 USD en la próxima factura) para incentivar a los clientes que utilizan Cheque Electrónico (el método con peor Churn, cercano al 45%) a migrar sus cuentas hacia cargos automáticos con Tarjeta de Crédito o Transferencia Bancaria.
- **Reforzamiento del Onboarding en el ciclo de vida inicial**: Rediseñar la estrategia de acompañamiento y atención al cliente (*Customer Success*) durante los primeros 90 días posteriores a la contratación, concentrando los esfuerzos de retención en esta ventana temporal crítica que concentra el mayor volumen de cancelaciones históricas.
- **Mitigación psicológica del cobro digital**: Optimizar el formato de las notificaciones de facturación electrónica (`PaperlessBilling = Yes`) para los perfiles digitales, añadiendo resúmenes automatizados de los beneficios y volumen de datos consumidos en el mes con el fin de justificar el valor del servicio y contrarrestar su propensión del 33% al abandono.
- **Activación del protocolo de Alerta Temprana**: Desplegar de forma inmediata la lista automatizada del Top 500 de clientes de alto riesgo hacia los equipos de retención avanzada y Call Center, permitiendo realizar llamadas de fidelización proactivas antes de que los usuarios inicien el proceso de cancelación.

### Metodología

- **Estandarización y conversión de tipos de datos**: Se ejecutó la transformación de la columna `TotalCharges` mediante la eliminación de registros vacíos y la reconfiguración de su tipo de dato a valor numérico flotante (`FLOAT`), corrigiendo inconsistencias estructurales de origen y asegurando la integridad del análisis financiero.
- **Cuantificación del impacto financiero y volumétrico**: Se desarrollaron consultas de agregación para determinar la tasa de Churn global, el volumen exacto de deserción y la fuga de ingresos mensuales recurrentes (`MonthlyCharges`), contrastando estas métricas con el valor histórico acumulado (`TotalCharges`) de los clientes retenidos.
- **Evaluación y segmentación de infraestructura técnica**: Se agruparon y analizaron los perfiles de consumo según el tipo de servicio de internet (`InternetService`), aislando las tasas de cancelación y los costos promedio para identificar discrepancies operativas en la oferta de Fibra Óptica.
- **Análisis de la densidad de adopción de productos**: Se implementó una matriz de lógica condicional utilizando sentencias `CASE WHEN` para sumar el volumen de servicios de valor agregado contratados, midiendo la correlación directa entre el nivel de *cross-selling* y la lealtad a largo plazo del usuario.
- **Mapeo del ciclo de vida y ventanas críticas**: Se estructuró un análisis de cohortes temporales agrupando la antigüedad (`tenure`) en rangos trimestrales y semestrales, logrando localizar con precisión milimétrica el periodo de tiempo con mayor vulnerabilidad operativa.
- **Auditoría contractual y operativa**: Se desglosó el comportamiento de deserción cruzando los esquemas legales de contratación (`Contract`) y los métodos de facturación (`PaperlessBilling`), identificando el riesgo latente en los modelos de cobro no automáticos.
- **Diseño del modelo de Alerta Temprana (Early Warning)**: Se construyó una consulta predictiva basada en reglas de negocio que filtra y extrae de forma proactiva un listado de los 500 clientes activos con el mayor índice de riesgo acumulado, priorizados por su valor financiero para el despliegue de campañas de retención inmediatas.

### Diccionario de datos
La tabla WA_Fn-UseC_-Telco-Customer-Churn:
- customerID: El código de identificación único que tiene cada cliente.
- gender: El género del usuario, que puede ser hombre o mujer.
- SeniorCitizen: Indica si el cliente es una persona de la tercera edad o no.
- Partner: Especifica si la persona tiene pareja o está casada.
- Dependents: Indica si el cliente tiene personas que dependen económicamente de él.
- tenure: La cantidad de meses que el cliente lleva activo en la empresa.
- PhoneService: Si el usuario tiene contratado el servicio de teléfono fijo.
- MultipleLines: Detalla si el cliente cuenta con más de una línea telefónica.
- InternetService: El tipo de conexión a internet que utiliza, que puede ser DSL, Fibra Óptica o ninguna.
- OnlineSecurity: Si el cliente paga por el servicio adicional de seguridad digital.
- OnlineBackup: Si tiene contratado el servicio de respaldo en la nube.
- DeviceProtection: Si cuenta con el seguro de protección para sus dispositivos.
- TechSupport: Si tiene activo el servicio de soporte técnico preferencial.
- StreamingTV: Si usa el servicio para ver televisión digital por internet.
- StreamingMovies: Si tiene activada la opción para ver películas bajo demanda.
- Contract: El tipo de contrato que maneja, ya sea mes a mes, por un año o por dos años.
- PaperlessBilling: Si el cliente prefiere recibir su factura de forma digital en lugar de papel.
- PaymentMethod: El método que utiliza para pagar, como cheque electrónico, cheque enviado por correo, transferencia bancaria o tarjeta de crédito.
- MonthlyCharges: El monto total que se le cobra al cliente cada mes.
- TotalCharges: La cantidad total de dinero que el cliente ha pagado a la empresa a lo largo de todo el tiempo que lleva con el servicio.
- Churn: Indica si el cliente canceló su servicio y dejó la compañía.

# EN English

## Churn Trend and Pattern Analysis in Subscription Services for a Telecommunications Company

This project consisted of the strategic analysis and optimization of the customer retention ecosystem for a growing telecommunications company. The main objective was to centralize and structure massive information from its subscriber database (detailing demographic profiles, tenure, contract types, and payment methods) along with the breakdown of consumption across its suite of advanced services (DSL and fiber optic connectivity, cybersecurity tools, technical support, and streaming platforms). With this raw database, a rigorous cleaning and transformation process was implemented in PostgreSQL, converting inconsistent records into a unified analytical environment that balances a high-level financial diagnosis with an analysis of users' operational behavior.

The solution allows the business to continuously monitor its commercial health by tracking critical retention KPIs such as the global Churn rate, the impact on lost monthly revenue, accumulated Customer Lifetime Value, and service adoption density per user. To respond to the strategic needs of the company, the analysis was structured to identify the main red flags in the operation. As a result of the project, an automated Early Warning model was designed and implemented in SQL to proactively isolate the top 500 active customers with the highest probability of leaving based on their consumption patterns. Thanks to this, the business now has a key analytical asset to transition from a reactive stance to a proactive strategy, streamlining commercial decision-making and allowing the Marketing and Customer Success teams to deploy hyper-targeted loyalty campaigns to safeguard the company's revenue.

### Tools and Data Processes

![SQL](https://img.shields.io/badge/SQL-3262A8?style=for-the-badge)
![Postgre SQL](https://img.shields.io/badge/PostgreSQL-3262A8?style=for-the-badge)
![Exploratory Data Analysis](https://img.shields.io/badge/Exploratory_Data_Analysis-031796?style=for-the-badge)
![Trends Analysis](https://img.shields.io/badge/Trends_Analysis-031796?style=for-the-badge)
![Data Cleaning](https://img.shields.io/badge/Data_Cleaning-031796?style=for-the-badge)
![Data Transformation](https://img.shields.io/badge/Data_Transformation-031796?style=for-the-badge)
![Logical & Conditional Modelling](https://img.shields.io/badge/Logical_and_Conditional_Modelling-031796?style=for-the-badge)
![Financial Analysis](https://img.shields.io/badge/Financial_Analysis-031796?style=for-the-badge)

---

### Key Questions

- Financial Impact Diagnosis and Problem Identification
1. What is the company's current global Churn rate and how much money in monthly revenue (MonthlyCharges) does losing these customers represent?
2. If we analyze the total historical record (TotalCharges), how much money have customers who already left the company stopped contributing compared to the total accumulated value of those who remain active?
- Service Portfolio Analysis (Saturation and Loyalty)
3. Do customers who contract Fiber optic internet have a higher or lower Churn rate than those using DSL? What do you think is the economic reason considering their average monthly charges?
4. Do technical support (TechSupport) and online security (OnlineSecurity) really retain customers? Compare the Churn rate of customers who have these services activated versus those who do not.
5. How many additional services do loyal customers consume on average compared to those who cancel? (Services to evaluate: OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, StreamingMovies).
- Operations and Customer Lifecycle
6. What is the tenure distribution of customers who leave? Is there a "critical month" or period of time (e.g., the first 6 months) where most cancellations occur?
7. How does the type of contract (Contract) affect Churn? Calculate the abandonment percentage for Month-to-month contracts vs. 1 and 2-year contracts.
- Channel and Billing Strategy (Marketing & Finance)
8. Does the payment method influence attrition? Calculate the Churn Rate broken down by each PaymentMethod. Are automatic methods (credit card/bank transfer) more effective at retaining than electronic checks?
9. Are customers with paperless billing (PaperlessBilling = Yes) more prone to Churn than those who receive a physical invoice?
- Early Warning (Predictive Approach)
10. Generate a list with the customerID of the Top 500 active customers with the highest risk of Churn to send them an offer tomorrow morning.

### Conclusions and Recommendations

- **Proactive contract migration**: Implement financial or operational incentive campaigns (such as doubling internet speed or gifting months of streaming services) aimed exclusively at "Month-to-month" customers, motivating them to sign a 1 or 2-year commitment to plunge their Churn rate from 42% to less than 11%.
- **Preventive packaging of value-added services**: Configure commercial bundles that include Technical Support (`TechSupport`) and Online Security (`OnlineSecurity`) free of charge for the first few months or natively integrated into Fiber Optic plans, taking advantage of the fact that users with these services show a three times higher retention rate.
- **Infrastructure and expectation audit in Fiber Optic**: Initiate an urgent technical review and satisfaction analysis in areas with Fiber Optic coverage, given that, despite being the service with the highest average billing ($93 USD), it records a critical attrition rate that exceeds 40%.
- **Direct debit and automatic payment incentives**: Launch a one-time bonus program (e.g., a $5 USD discount on the next bill) to encourage customers who use Electronic Check (the method with the worst Churn, close to 45%) to migrate their accounts toward automatic charges with a Credit Card or Bank Transfer.
- **Reinforcement of Onboarding in the initial lifecycle**: Redesign the customer support and attention strategy (*Customer Success*) during the first 90 days following contraction, concentrating retention efforts on this critical temporal window that concentrates the largest volume of historical cancellations.
- **Psychological mitigation of digital billing**: Optimize the format of electronic billing notifications (`PaperlessBilling = Yes`) for digital profiles, adding automated summaries of the benefits and volume of data consumed in the month in order to justify the value of the service and counteract its 33% propensity to abandon.
- **Activation of the Early Warning protocol**: Immediately deploy the automated list of the Top 500 high-risk customers to the advanced retention and Call Center teams, allowing proactive loyalty calls to be made before users initiate the cancellation process.

### Methodology

- **Data standardization and type conversion**: The transformation of the `TotalCharges` column was executed by removing empty records and reconfiguring its data type to a floating-point numeric value (`FLOAT`), correcting structural inconsistencies at the source and ensuring the integrity of the financial analysis.
- **Quantification of financial and volumetric impact**: Aggregation queries were developed to determine the global Churn rate, the exact volume of attrition, and the leakage of recurring monthly revenue (`MonthlyCharges`), contrasting these metrics with the accumulated historical value (`TotalCharges`) of retained customers.
- **Technical infrastructure evaluation and segmentation**: Consumption profiles were grouped and analyzed according to the type of internet service (`InternetService`), isolating cancellation rates and average costs to identify operational discrepancies in the Fiber Optic offering.
- **Product adoption density analysis**: A conditional logic matrix was implemented using `CASE WHEN` statements to sum the volume of contracted value-added services, measuring the direct correlation between the level of *cross-selling* and long-term user loyalty.
- **Lifecycle mapping and critical windows**: A time cohorts analysis was structured by grouping tenure (`tenure`) into quarterly and semi-annual ranges, successfully locating the period of time with the greatest operational vulnerability with pinpoint precision.
- **Contractual and operational audit**: Attrition behavior was broken down by crossing legal billing schemes (`Contract`) and invoicing methods (`PaperlessBilling`), identifying the latent risk in non-automated payment models.
- **Early Warning model design**: A predictive query based on business rules was built to proactively filter and extract a list of the 500 active customers with the highest accumulated risk index, prioritized by their financial value for the deployment of immediate retention campaigns.

### Data Dictionary
The WA_Fn-UseC_-Telco-Customer-Churn table:
- customerID: The unique alphanumeric identification code assigned to each customer.
- gender: The user's gender, which can be male or female.
- SeniorCitizen: Indicates whether the customer is a senior citizen or not.
- Partner: Specifies whether the person has a partner or is married.
- Dependents: Indicates whether the customer has people who depend on them economically.
- tenure: The number of months the customer has been active in the company.
- PhoneService: Whether the user has contracted a landline phone service.
- MultipleLines: Details whether the customer has more than one phone line.
- InternetService: The type of internet connection used, which can be DSL, Fiber Optic, or none.
- OnlineSecurity: Whether the customer pays for the additional online security service.
- OnlineBackup: Whether they have contracted the cloud backup additional service.
- DeviceProtection: Whether they have a protection insurance for their devices.
- TechSupport: Whether they have the premium technical support service active.
- StreamingTV: Whether they use the service to watch digital television over the internet.
- StreamingMovies: Whether they have the option to watch movies on demand activated.
- Contract: The type of contract they handle, whether it is month-to-month, for one year, or for two years.
- PaperlessBilling: Whether the customer prefers to receive their bill digitally instead of on paper.
- PaymentMethod: The method used to pay, such as electronic check, mailed check, bank transfer, or credit card.
- MonthlyCharges: The total amount billed to the customer each month.
- TotalCharges: The total amount of money the customer has paid to the company throughout the entire time they have been with the service.
- Churn: Indicates whether the customer canceled their service and left the company.
