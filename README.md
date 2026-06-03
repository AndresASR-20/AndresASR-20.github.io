# Acerca de mí

Ingeniero mecánico y consultor de ERP certificado en análisis de datos con sólida experiencia en extracción, limpieza y modelado de datos estratégicos.

Especialista en el ciclo completo del dato: desde la extracción y limpieza de grandes volúmenes de información, hasta el modelado predictivo y el diseño de tableros interactivos. Automatizo flujos de trabajo ETL para reducir tiempos de procesamiento y transformo datos complejos en tableros visuales que guían las decisiones del negocio.

### Habilidades tecnológicas
* Análisis y gestión de datos utilizando **Excel / SQL / Python**
* Visualización de datos y narración de historias usando **Tableau / Power BI**
* Transferencia de información entre sistemas usando **API / Postman**
* Digitalización de business operations usando **ERP (Microsoft Dynamics 365 ERP's)**
* Adopción de IA como asistente de investigación y optimización de mis entregables usando **GitHub Copilot / Copilot / Gemini 3.1 Pro**
* Generación de diagramas de flujo de procesos usando **Microsoft Visio**
* Gestión de hitos y tareas de proyecto usando **Azure DevOps**
* Documentación de proyectos de data usando **Jupyter Notebooks**
* Gestión de documentación de proyectos usando **Microsoft SharePoint / Microsoft OneDrive**

### Habilidades blandas
Análisis de datos | Resolución de problemas | Comunicación efectiva | Trabajo en equipo | Orientación a resultados | Organización | Proactividad | Atención al detalle | Optimización de Procesos

[LINKEDIN](https://www.linkedin.com/in/luis-andres-aponte-san-roman/) | [MICROSOFT OUTLOOK](mailto:andres_laasr20@outlook.com)

# Proyectos Seleccionados

## Optimización de gastos de distribuidora de entrada a eventos de entretenimiento

Showz es una empresa de venta de entradas de eventos. Anteriormente a la ejecución del proyecto, la empresa se encontraba en una situación de toma de decisiones en cuanto a la regulación de sus gastos de operación, buscando identificar el comportamiento y participación de sus fuentes de anuncios y dispositivos en los que se encuentra habilitada la plataforma de ventas de la empresa, con el propósito principal de que los descubrimientos generados permitan una claridad precisa para la toma de decisiones respecto a la optimización o descarte de fuentes de anuncios y dispositivos.

### Herramientas y Tipo de Proyecto

| Tecnologías | Proceso de Datos |
| :--- | :--- |
| `PYTHON` | `LIMPIEZA DE DATOS` |
| `PANDAS` | `TRANSFORMACIÓN DE DATOS` |
| `MATPLOTLIB` | `GENERACIÓN DE GRÁFICOS` |
| `PIPLOT` | `GENERACIÓN DE GRÁFICOS` |
| `SEABORN` | `ANÁLISIS ESTADÍSTICO` |
| `NUMPY` | `CÁLCULO NUMÉRICO` |

---

### Preguntas clave

1. ¿Cómo los clientes usan el servicio?
2. ¿Cuándo empiezan a comprar?
3. ¿Cuánto dinero aporta cada cliente a la compañía?
4. ¿Cuándo los ingresos cubren el costo de adquisición de los clientes?

### Metodología

- **Preprocesamiento de datos:** Se limpiaron y estandarizaron los datos, eliminando inconsistencias y verificando la ausencia de duplicados y valores faltantes.
- **Exploratory Data Analysis (EDA):** Análisis de métricas para identificación de tendencias (entre fuentes de anuncios y entre dispositivos touch y desktop):
   - Tasa de conversión
   - Tamaño promedio de orden
   - LTV
   - CAC
   - ROMI

- **Generación de visualizaciones de datos:** Se definieron gráficos de histogramas, barras, mapas de calor; con la intención de contar con recursos que permitan al cliente el entendimiento más sencillo de las métricas y descubrimientos obtenidos.

### Conclusiones y recomendaciones

**RECOMENDACIONES DE FUENTES/PLATAFORMAS**

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

### Visualizaciones destacadas

- **Mapa de calor del ciclo de vida de la tasa de retención de Showz**

   Observamos que en cada cohorte (mes de primera visita al portal de Showz) por cada mes que pasa, se presenta una tendencia de decremento de la tasa de retención de los clientes (hablando en un sentido general de la empresa, sin distinguir entre fuentes de anuncios o dispositivos. Esto denota para Shows una alerta para tener claro que es relevante realizar una investigación a profundización de en qué medios es donde se está presentando esta perdida de interés del cliente.

![Mapa de calor del ciclo de vida de la tasa de retención](assets/img/project_Business_Analysis/Graphic_2.png)

- **Rangos de días requeridos para conversión de clientes (análisis por dispositivos)**

   Se puede percibir que el dispositivo "desktop" mantiene un mejor comportamiento de conversión de clientes, puesto que este dispositivo muestra una considerable cantidad de clientes que el mismo día que se registraron, realizaron una compra en la plataforma de Showz. Por otra parte, el dispositivo "touch" tiene una cantidad considerablemente menor de clientes que realizaron una compra el mismo día que se registraron. El mismo comportamiento de diferencia de conversión de clientes entre dispositivos se puede percibir para los otros 3 rangos de días.

![Gráfico de barras de rangos de días para conversión de clientes](assets/img/project_Business_Analysis/Graphic_4.png)

- **Análisis de clientes únicos con participación en plataforma por unidad de tiempo**

   Este análisis entrega información de utilidad para conocer el comportamiento dentro de la plataforma por distintas unidades de tiempo (día, semana y mes). Mediante estos gráficos se puede detectar comportamientos peculiares debido a fechas festivas, comportamientos temporales durante el año, entre otros comportamientos temporales que agregue valor identificar.

![Histogramas de clientes únicos en plataforma por unidades de tiempo](assets/img/project_Business_Analysis/Graphic_1.png)

Explora más detalles del proyecto en el [repositorio completo](https://github.com/AndresASR-20/AndresASR-20.github.io/tree/main/assets/projects/project_Business_Analysis).

## Análisis de retención de clientes para gimnasio

En todas las industrias, la retención de clientes es fundamental para garantizar ingresos sostenibles y reducir los costos asociados con la adquisición de nuevos clientes. LLevando esta situación de retención de clientes al sector de los servicios de gimnasio, uno de los problemas más comunes que enfrentan los gimnasios y otros servicios es la pérdida de clientes. ¿Cómo descubres si un/a cliente ya no está contigo? En el caso de un gimnasio, tiene sentido decir que un/a cliente se ha ido si no viene durante un mes. Por supuesto, es posible que se hayan ido de viaje y retomen sus visitas cuando regresen, pero ese no es un caso típico. Por lo general, si un/a cliente se une, viene varias veces y luego desaparece, es poco probable que regrese. Identificar los factores clave que influyen en la retención y cancelación permite al gimnasio Model Fitness anticiparse a los riesgos de abandono, diseñar estrategias de fidelización efectivas y personalizar las experiencias para cada cliente.

### Herramientas y Tipo de Proyecto

| Tecnologías | Proceso de Datos |
| :--- | :--- |
| `PYTHON` | `LIMPIEZA DE DATOS` |
| `PANDAS` | `TRANSFORMACIÓN DE DATOS` |
| `MATPLOTLIB` | `GENERACIÓN DE GRÁFICOS` |
| `PIPLOT` | `GENERACIÓN DE GRÁFICOS` |
| `SEABORN` | `ANÁLISIS ESTADÍSTICO` |
| `NUMPY` | `CÁLCULO NUMÉRICO` |
| `SCIKIT-LEARN` | `MODELADO DE DATOS (CLUSTERING)` |

---

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

### Visualizaciones destacadas

- **Mapa de calor de correlación entre características**

   Se encontró que Las características month_to_end_contract y contract_period están altamente correlacionadas (0.9), lo que sugiere que se debe tener cuidado con la multicolinealidad al desarrollar modelos predictivos.

![Mapa de calor de correlación entre características](assets/img/project_Business_Analysis/archivo_2.png)

- **Histograma de características con base en estátus de cliente (vigente o cancelado)**

   Este tipo de visualizaciones de datos agregan un valor visual considerable puesto que pueden representar un apoyo para percibir comportamientos de cada característica, desde un enfoque individual, con base en el estátus de los clientes (vigentes o cancelados).

![Histograma de características con base en estátus de cliente](assets/img/project_Business_Analysis/archivo_3.png)

- **Dendograma para análisis de clústeres**

   El dendrograma muestran cómo los clientes se agrupan en segmentos distintos basados en sus características, donde el número óptimo de clústeres sugerido es 4.

![Dendograma para análisis de clústeres](assets/img/project_Business_Analysis/archivo_1.png)

Explora más detalles del proyecto en el [repositorio completo](https://github.com/AndresASR-20/AndresASR-20.github.io/tree/main/assets/projects/project_Data_Modelling).
