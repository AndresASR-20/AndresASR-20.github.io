# ES Español

## Análisis de retención de clientes para gimnasio

En todas las industrias, la retención de clientes es fundamental para garantizar ingresos sostenibles y reducir los costos asociados con la adquisición de nuevos clientes. LLevando esta situación de retención de clientes al sector de los servicios de gimnasio, uno de los problemas más comunes que enfrentan los gimnasios y otros servicios es la pérdida de clientes. ¿Cómo descubres si un/a cliente ya no está contigo? En el caso de un gimnasio, tiene sentido decir que un/a cliente se ha ido si no viene durante un mes. Por supuesto, es posible que se hayan ido de viaje y retomen sus visitas cuando regresen, pero ese no es un caso típico. Por lo general, si un/a cliente se une, viene varias veces y luego desaparece, es poco probable que regrese. Identificar los factores clave que influyen en la retención y cancelación permite al gimnasio Model Fitness anticiparse a los riesgos de abandono, diseñar estrategias de fidelización efectivas y personalizar las experiencias para cada cliente.

### Herramientas y tipo de proyecto
![Python](https://img.shields.io/badge/Python-3262A8?style=for-the-badge&logo=Python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-3262A8?style=for-the-badge&logo=pandas&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-3262A8?style=for-the-badge)
![Pyplot](https://img.shields.io/badge/Pyplot-3262A8?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-3262A8?style=for-the-badge)
![NumPy](https://img.shields.io/badge/NumPy-3262A8?style=for-the-badge)
![scikit-learn](https://img.shields.io/badge/scikit--learn-%23357ebd.svg?style=for-the-badge&logo=scikit-learn&logoColor=white)
![Jupyter Notebook](https://img.shields.io/badge/Jupyter_Notebook-3262A8?style=for-the-badge&logo=jupyter&logoColor=white)
![Limpieza de datos](https://img.shields.io/badge/Limpieza_de_datos-031796?style=for-the-badge)
![Transformación de datos](https://img.shields.io/badge/Transformación_de_datos-031796?style=for-the-badge)
![Visualización de datos](https://img.shields.io/badge/Visualización_de_datos-031796?style=for-the-badge)
![Análisis estadístico](https://img.shields.io/badge/Análisis_estadístico-031796?style=for-the-badge)
![Cálculo numérico](https://img.shields.io/badge/Cálculo_numérico-031796?style=for-the-badge)
![Modelado de datos](https://img.shields.io/badge/Modelado_de_datos-031796?style=for-the-badge)

### Preguntas clave

1. ¿Qué factores demográficos o de comportamiento influyen más en la cancelación?
2. ¿Qué características diferencian a los clientes leales de los que abandonan?
3. ¿Cómo se pueden segmentar los clientes para diseñar estrategias personalizadas?

### Metodología

- **Preprocesamiento de datos:** Se limpiaron y estandarizaron los datos, eliminando inconsistencias y verificando la ausencia de duplicados y valores faltantes.
- **Explorartory Data Analysis (EDA):** Se analizaron características demográficas y de uso, identificando patrones en clientes que permanecen y los que cancelan.
- **Modelado predictivo:** Se entrenaron modelos de regresión logística y bosque aleatorio para predecir la cancelación de clientes con un precisión del 85% y 84%, respectivamente.
- **Clustering:** Se segmentaron los clientes en grupos utilizando K-means para identificar comportamientos similares.

### Conclusiones y recomendaciones

#### GRUPOS OBJETIVO PRIORITARIOS
- ALTA PRIORIDAD - Clúster 3 "Nuevos y jóvenes" (55.8% cancelación)

Perfil: Clientes de 26.9 años promedio, nuevos (1.7 meses), contratos cortos

- PRIORIDAD MEDIA - Clúster 2 "Distantes geográficamente" (44.9% cancelación)

Perfil: Ninguno vive cerca del gimnasio, contratos cortos

**Acciones específicas:**

- Convenios con apps de transporte (Uber/taxi con descuento)
- Horarios extendidos para mayor flexibilidad
- Clases virtuales complementarias
- Programa de referidos con bonificaciones especiales

#### MEDIDAS PARA REDUCIR LA ROTACIÓN

A) ESTRATEGIAS PREVENTIVAS

- Para nuevos miembros (primeros 3 meses):
   - Metas progresivas personalizadas
   - Descuentos progresivos por permanencia

B) ESTRATEGIAS DE RETENCIÓN ACTIVA

- Monitoreo de señales de alerta:
   - Frecuencia de visitas < 1.5 veces/mes → Intervención inmediata
   - Contratos de 1 mes → Oferta automática de extensión con beneficios
   - Sin teléfono registrado → Campaña especial de contacto

#### APROVECHAMIENTO DE GRUPOS LEALES

##### Clúster 1 "Comprometidos de largo plazo" (1.5% cancelación)

Estrategia: Convertirlos en embajadores de marca

Acciones:
- Programa VIP con beneficios exclusivos
- Comisiones por referir nuevos miembros
- Acceso prioritario a nuevas clases/equipos

##### Clúster 0 "Promocionales VIP" (13.9% cancelación)

Estrategia: Maximizar el poder del marketing boca a boca

Acciones:
- Ampliar programa de referidos
- Eventos especiales para empresas asociadas
- Descuentos familiares/grupales
 
#### MÉTRICAS DE SEGUIMIENTO RECOMENDADAS
- KPIs mensuales por clúster:
   - Tasa de cancelación por grupo
   - Frecuencia promedio de visitas
   - Tiempo promedio de permanencia
   - ROI de programas de retención específicos

### Diccionario de datos
La tabla gym_churn_us:
- 'Churn' — la cancelación para el mes en cuestión
- Campos de dataset actuales:
  - Datos del usuario del mes anterior:
    - 'gender'.
    - 'Near_Location' — si el/la usuario/a vive o trabaja en el vecindario donde se encuentra el gimnasio.
    - 'Partner' — si el/la usuario/a trabaja en una compañía asociada (el gimnasio tiene empresas asociadas cuyos empleados obtienen descuentos; en esos casos el gimnasio almacena información sobre los empleadores de los clientes).
    - 'Promo_friends' — si el/la usuario/a originalmente se inscribió mediante una oferta “trae a un/a amigo/a” (se utilizó el código promocional de un/a amigo/a cuando pagaron el primer abono).
    - 'Phone' — si el/la usuario/a aportó el número de teléfono.
    - 'Age'.
    - 'Lifetime' — el tiempo (en meses) desde que el/la usuario/a llegó por primera vez al gimnasio.
   
# EN English

## Customer Retention Analysis for Gym

Across all industries, customer retention is essential to ensure sustainable revenue and reduce the costs associated with acquiring new customers. Bringing this customer retention situation to the gym services sector, one of the most common problems faced by gyms and other services is customer churn. How do you find out if a customer is no longer with you? In the case of a gym, it makes sense to say that a customer has left if they do not come for a month. Of course, it is possible that they went on a trip and resume their visits when they return, but that is not a typical case. Usually, if a customer joins, comes a few times, and then disappears, they are unlikely to return. Identifying the key factors influencing retention and cancellation allows the Model Fitness gym to anticipate churn risks, design effective loyalty strategies, and personalize experiences for each customer.

## Tools & Data processes
![Python](https://img.shields.io/badge/Python-3262A8?style=for-the-badge&logo=Python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-3262A8?style=for-the-badge&logo=pandas&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-3262A8?style=for-the-badge)
![Pyplot](https://img.shields.io/badge/Pyplot-3262A8?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-3262A8?style=for-the-badge)
![NumPy](https://img.shields.io/badge/NumPy-3262A8?style=for-the-badge)
![scikit-learn](https://img.shields.io/badge/scikit--learn-%23357ebd.svg?style=for-the-badge&logo=scikit-learn&logoColor=white)
![Jupyter Notebook](https://img.shields.io/badge/Jupyter_Notebook-3262A8?style=for-the-badge&logo=jupyter&logoColor=white)
![Data Cleaning](https://img.shields.io/badge/Data_Cleaning-031796?style=for-the-badge)
![Data Transformation](https://img.shields.io/badge/Data_Transformation-031796?style=for-the-badge)
![Data Visualization](https://img.shields.io/badge/Data_Visualization-031796?style=for-the-badge)
![Stadistical Analysis](https://img.shields.io/badge/Statistical_Analysis-031796?style=for-the-badge)
![Numerical Calculus](https://img.shields.io/badge/Numerical_Calculation-031796?style=for-the-badge)
![Data Modelling](https://img.shields.io/badge/Data_Modeling-031796?style=for-the-badge)

## Key questions

1. What demographic or behavioral factors influence churn the most?
2. What characteristics differentiate loyal customers from those who leave?
3. How can customers be segmented to design personalized strategies?

## Methodology

- **Data preprocessing:** Data was cleaned and standardized, removing inconsistencies and verifying the absence of duplicates and missing values.
- **Explorartory Data Analysis (EDA):** Demographic and usage characteristics were analyzed, identifying patterns in customers who stay and those who churn.
- **Predictive modeling:** Logistic regression and random forest models were trained to predict customer churn with an accuracy of 85% and 84%, respectively.
- **Clustering:** Customers were segmented into groups using K-means to identify similar behaviors.

## Conclusions & recommendations

### PRIORITY TARGET GROUPS
- HIGH PRIORITY - Cluster 3 "New and young" (55.8% churn)

Profile: Customers 26.9 years old on average, new (1.7 months), short-term contracts

- MEDIUM PRIORITY - Cluster 2 "Geographically distant" (44.9% churn)

Profile: None live close to the gym, short-term contracts

**SPECIFIC ACTIONS:**

- Partnerships with transportation apps (Uber/taxi with discount)
- Extended hours for greater flexibility
- Complementary virtual classes
- Referral program with special bonuses

### MEASURES TO REDUCE TURNOVER

A) PREVENTIVE STRATEGIES

- For new members (first 3 months):
   - Personalized progressive goals
   - Progressive retention discounts

B) ACTIVE RETENTION STRATEGIES

- Monitoring warning signs:
   - Attendance frequency < 1.5 times/month → Immediate intervention
   - 1-month contracts → Automatic extension offer with benefits
   - No registered phone number → Special contact campaign

### EXPLOITATION OF LOYAL GROUPS

#### Cluster 1 "Long-term committed" (1.5% churn)

Strategy: Turn them into brand ambassadors

Actions:
- VIP program with exclusive benefits
- Commissions for referring new members
- Priority access to new classes/equipment

#### Cluster 0 "VIP Promotional" (13.9% churn)

Strategy: Maximize the power of word-of-mouth marketing

Actions:
- Expand referral program
- Special events for partner companies
- Family/group discounts
 
### SUGGESTED TRACKING METRICS
- Monthly KPIs by cluster:
   - Churn rate by group
   - Average visit frequency
   - Average lifetime duration
   - ROI of specific retention programs

## Data Dictionary
The table gym_churn_us:
- 'Churn' — churn for the month in question
- Current dataset fields:
  - User data from the previous month:
    - 'gender'.
    - 'Near_Location' — whether the user lives or works in the neighborhood where the gym is located.
    - 'Partner' — whether the user works in a partner company (the gym has partner companies whose employees get discounts; in those cases, the gym stores information about the clients' employers).
    - 'Promo_friends' — whether the user originally signed up through a "bring a friend" offer (a friend's promo code was used when they paid for their first membership).
    - 'Phone' — whether the user provided their phone number.
    - 'Age'.
    - 'Lifetime' — the time (in months) since the user first came to the gym.
  - Attendance and purchase log data, and data on current membership status:
    - 'Contract_period' — 1 month, 3 months, 6 months, or 1 year.
    - 'Month_to_end_contract' — the months remaining until the contract expires.
    - 'Group_visits' — whether the user participates in group sessions.
    - 'Avg_class_frequency_total' — average frequency of visits per week over the customer's lifetime.
    - 'Avg_class_frequency_current_month' — average frequency of visits per week during the current month.
    - 'Avg_additional_charges_total' — total amount of money spent on other gym services: café, sports goods, cosmetics, massages, etc.
