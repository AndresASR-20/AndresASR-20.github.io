# nálisis de retención de clientes para gimnasio

En todas las industrias, la retención de clientes es fundamental para garantizar ingresos sostenibles y reducir los costos asociados con la adquisición de nuevos clientes. LLevando esta situación de retención de clientes al sector de los servicios de gimnasio, uno de los problemas más comunes que enfrentan los gimnasios y otros servicios es la pérdida de clientes. ¿Cómo descubres si un/a cliente ya no está contigo? En el caso de un gimnasio, tiene sentido decir que un/a cliente se ha ido si no viene durante un mes. Por supuesto, es posible que se hayan ido de viaje y retomen sus visitas cuando regresen, pero ese no es un caso típico. Por lo general, si un/a cliente se une, viene varias veces y luego desaparece, es poco probable que regrese. Identificar los factores clave que influyen en la retención y cancelación permite al gimnasio Model Fitness anticiparse a los riesgos de abandono, diseñar estrategias de fidelización efectivas y personalizar las experiencias para cada cliente.

## Herramientas y tipo de proyecto
![Python](https://img.shields.io/badge/Python-3262A8?style=for-the-badge&logo=Python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-3262A8?style=for-the-badge&logo=pandas&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-3262A8?style=for-the-badge)
![Pyplot](https://img.shields.io/badge/Pyplot-3262A8?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-3262A8?style=for-the-badge)
![NumPy](https://img.shields.io/badge/NumPy-3262A8?style=for-the-badge)
![Scikit-Learn](https://img.shields.io/badge/Scikit-Learn-3262A8?style=for-the-badge)
![Jupyter Notebook](https://img.shields.io/badge/Jupyter_Notebook-3262A8?style=for-the-badge&logo=jupyter&logoColor=white)
![Limpieza de datos](https://img.shields.io/badge/Limpieza_de_datos-031796?style=for-the-badge)
![Transformación de datos](https://img.shields.io/badge/Transformación_de_datos-031796?style=for-the-badge)
![Visualización de datos](https://img.shields.io/badge/Visualización_de_datos-031796?style=for-the-badge)
![Análisis estadístico](https://img.shields.io/badge/Análisis_estadístico-031796?style=for-the-badge)
![Cálculo numérico](https://img.shields.io/badge/Cálculo_numérico-031796?style=for-the-badge)
![Modelado de datos](https://img.shields.io/badge/Modelado_de_datos-031796?style=for-the-badge)

## Preguntas clave

1. ¿Qué factores demográficos o de comportamiento influyen más en la cancelación?
2. ¿Qué características diferencian a los clientes leales de los que abandonan?
3. ¿Cómo se pueden segmentar los clientes para diseñar estrategias personalizadas?

## Metodología

- **Preprocesamiento de datos:** Se limpiaron y estandarizaron los datos, eliminando inconsistencias y verificando la ausencia de duplicados y valores faltantes.
- **Explorartory Data Analysis (EDA):** Se analizaron características demográficas y de uso, identificando patrones en clientes que permanecen y los que cancelan.
- **Modelado predictivo:** Se entrenaron modelos de regresión logística y bosque aleatorio para predecir la cancelación de clientes con un precisión del 85% y 84%, respectivamente.
- **Clustering:** Se segmentaron los clientes en grupos utilizando K-means para identificar comportamientos similares.

## Conclusiones y recomendaciones

### GRUPOS OBJETIVO PRIORITARIOS
- ALTA PRIORIDAD - Clúster 3 "Nuevos y jóvenes" (55.8% cancelación)

Perfil: Clientes de 26.9 años promedio, nuevos (1.7 meses), contratos cortos

- PRIORIDAD MEDIA - Clúster 2 "Distantes geográficamente" (44.9% cancelación)

Perfil: Ninguno vive cerca del gimnasio, contratos cortos

**Acciones específicas:**

- Convenios con apps de transporte (Uber/taxi con descuento)
- Horarios extendidos para mayor flexibilidad
- Clases virtuales complementarias
- Programa de referidos con bonificaciones especiales

### MEDIDAS PARA REDUCIR LA ROTACIÓN

A) ESTRATEGIAS PREVENTIVAS

- Para nuevos miembros (primeros 3 meses):
   - Metas progresivas personalizadas
   - Descuentos progresivos por permanencia

B) ESTRATEGIAS DE RETENCIÓN ACTIVA

- Monitoreo de señales de alerta:
   - Frecuencia de visitas < 1.5 veces/mes → Intervención inmediata
   - Contratos de 1 mes → Oferta automática de extensión con beneficios
   - Sin teléfono registrado → Campaña especial de contacto

### APROVECHAMIENTO DE GRUPOS LEALES

#### Clúster 1 "Comprometidos de largo plazo" (1.5% cancelación)

Estrategia: Convertirlos en embajadores de marca

Acciones:
- Programa VIP con beneficios exclusivos
- Comisiones por referir nuevos miembros
- Acceso prioritario a nuevas clases/equipos

#### Clúster 0 "Promocionales VIP" (13.9% cancelación)

Estrategia: Maximizar el poder del marketing boca a boca

Acciones:
- Ampliar programa de referidos
- Eventos especiales para empresas asociadas
- Descuentos familiares/grupales
 
### MÉTRICAS DE SEGUIMIENTO RECOMENDADAS
- KPIs mensuales por clúster:
   - Tasa de cancelación por grupo
   - Frecuencia promedio de visitas
   - Tiempo promedio de permanencia
   - ROI de programas de retención específicos

## Diccionario de datos
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
  - Datos del registro de visitas y compras y datos sobre el estado actual de la membresía:
    - 'Contract_period' — 1 mes, 3 meses, 6 meses o 1 año.
    - 'Month_to_end_contract' — los meses que faltan hasta que expire el contrato.
    - 'Group_visits' — si el/la usuario/a participa en sesiones grupales.
    - 'Avg_class_frequency_total' — frecuencia media de visitas por semana a lo largo de la vida del cliente.
    - 'Avg_class_frequency_current_month' — frecuencia media de visitas por semana durante el mes en curso.
    - 'Avg_additional_charges_total' — cantidad total de dinero gastado en otros servicios del gimnasio: cafetería, productos deportivos, cosméticos, masajes, etc.
