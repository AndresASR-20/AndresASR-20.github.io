# ES Español

## Análisis de tendencias de categorías consumidas en Youtube

La agencia de publicidad Sterling & Draper tiene la necesidad de analizar tendencias de vídeos en YouTube para determinar qué contenido merece atención para la mercadotecnia. Cada video tiene una categoría específica (entretenimiento, música, noticias y política, etc.), una región y una fecha en que se hace tendencia. Un video puede estar en la sección de tendencias durante varios días seguidos.
Cada semana, es requerido que se genere una respuesta a las siguientes preguntas:

- ¿Qué categorías estaban en las tendencias de la semana pasada?
- ¿Cómo se distribuyeron en diversas regiones?
- ¿Qué categorías fueron particularmente populares en los Estados Unidos?

Para dar solución a la necesidad, se plantea la creación de un dashboard que habilite la solución a las preguntas anteriores. Para ello, se reunen los siguientes requisitos técnicos:

- Objetivo de negocios: analizar el historial de tendencias de videos en YouTube
- Con qué frecuencia se usará el dashboard: al menos una vez al día
- Usuario objetivo del dashboard: gerentes de planificación de videos publicitarios
- Contenido de los datos del dashboard:
   - Tendencias pasadas de videos, ordenadas por día y categoría
   - Tendencias de videos, ordenadas por país
   - Una tabla de correspondencia entre categorías y países
- Parámetros para agrupar los datos:
   - Fecha de tendencia
   - Categoría de video
   - País

### Herramientas y tipo de proyecto
![Tableau](https://img.shields.io/badge/Tableau-3262A8?style=for-the-badge)
![Visualización de datos](https://img.shields.io/badge/Visualización_de_datos-031796?style=for-the-badge)

### Preguntas clave

1. ¿Qué categorías estaban en las tendencias de la semana pasada?
2. ¿Cómo se distribuyeron en diversas regiones?
3. ¿Qué categorías fueron particularmente populares en los Estados Unidos?

### Metodología

- **Generación de gráfico para número de videos vistos por categoría y por día**: Se genera un gráfico que es capaz de mostrar las cantidades y proporciones de videos vistos en cada día por cada categoría (uno de valores absolutos y otro de valores porcentuales). Debe reaccionar al ajuste de filtros de región e intervalo de fechas.
- **Generación de gráfico de vistas totales por categoría**: Se genera un pie bar que es capaz de mostrar la proporción de videos vistos por cada categoría, entre el total de videos vistos. Debe reaccionar al ajuste de filtros de región e intervalo de fechas.
- **Generación de tabla de tendencias de videos por país y categoría**: Se genera un mapa de calor que es capaz de mostrar la cantidad de videos vista, donde se menciona la cantidad específica por cada posible combinación independiente de categoría y de región.
- **Generación de dashboard que conjunte gráficos**

### Diccionario de datos
La tabla trending_by_time:
- record_id: la clave primaria
- region: país/región geográfica
- trending_date: fecha y hora
- category_title: categoría del video
- videos_count: número de videos en la sección de tendencias

# EN English

## Trend Analysis of Consumed Categories on YouTube

The advertising agency Sterling & Draper has the need to analyze video trends on YouTube to determine which content deserves attention for marketing. Each video has a specific category (entertainment, music, news & politics, etc.), a region, and a date when it becomes a trend. A video can be in the trending section for several consecutive days.
Each week, it is required to generate a response to the following questions:

- What categories were in last week's trends?
- How were they distributed across various regions?
- What categories were particularly popular in the United States?

To provide a solution to this need, the creation of a dashboard is proposed to enable the solution to the previous questions. For this purpose, the following technical requirements are gathered:

- Business objective: analyze the history of trending videos on YouTube
- How often the dashboard will be used: at least once a day
- Target user of the dashboard: advertising video planning managers
- Dashboard data content:
   - Past video trends, ordered by day and category
   - Video trends, ordered by country
   - A correspondence table between categories and countries
- Parameters for grouping data:
   - Trending date
   - Video category
   - Country

### Tools & Data Processes
![Tableau](https://img.shields.io/badge/Tableau-3262A8?style=for-the-badge)
![Data Visualization](https://img.shields.io/badge/Data_Visualization-031796?style=for-the-badge)

### Key questions

1. What categories were in last week's trends?
2. How were they distributed across various regions?
3. What categories were particularly popular in the United States?

### Methodology

- **Generation of a chart for number of videos viewed by category and by day**: A chart is generated that is capable of showing the quantities and proportions of videos viewed each day for each category (one for absolute values and another for percentage values). It must react to the adjustment of region and date range filters.
- **Generation of a chart of total views by category**: A pie bar chart is generated that is capable of showing the proportion of videos viewed for each category out of the total videos viewed. It must react to the adjustment of region and date range filters.
- **Generation of a video trend table by country and category**: A heat map is generated that is capable of showing the number of videos viewed, mentioning the specific quantity for each possible independent combination of category and region.
- **Generation of a dashboard that combines charts**

### Data Dictionary
The table trending_by_time:
- record_id: the primary key
- region: country/geographic region
- trending_date: date and time
- category_title: video category
- videos_count: number of videos in the trending section
