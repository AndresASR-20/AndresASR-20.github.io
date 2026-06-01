# Optimización de gastos de distribuidora de entrada a eventos de entretenimiento

Showz es una empresa de venta de entradas de eventos. Anteriormente a la ejecución del proyecto, la empresa se encontraba en una situación de toma de decisiones en cuanto a la regulación de sus gastos de operación, buscando identificar el comportamiento y participación de sus fuentes de anuncios y dispositivos en los que se encuentra habilitada la plataforma de ventas de la empresa, con el propósito principal de que los descubrimientos generados permitan una claridad precisa para la toma de decisiones respecto a la optimización o descarte de fuentes de anuncios y dispositivos.

## Herramientas y tipo de proyecto
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

## Preguntas clave

1. ¿Cómo los clientes usan el servicio?
2. ¿Cuándo empiezan a comprar?
3. ¿Cuánto dinero aporta cada cliente a la compañía?
4. ¿Cuándo los ingresos cubren el costo de adquisición de los clientes?

## Metodología

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

## Conclusiones y recomendaciones
### RECOMENDACIONES DE FUENTES/PLATAFORMAS 

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

## Diccionario de datos
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
