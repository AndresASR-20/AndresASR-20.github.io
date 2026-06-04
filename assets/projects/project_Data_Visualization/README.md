# Análisis de tendencias de categorías consumidas en Youtube

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

## Herramientas y tipo de proyecto
![Tableau](https://img.shields.io/badge/Tableau-3262A8?style=for-the-badge)
![Visualización de datos](https://img.shields.io/badge/Visualización_de_datos-031796?style=for-the-badge)

## Preguntas clave

1. ¿Qué categorías estaban en las tendencias de la semana pasada?
2. ¿Cómo se distribuyeron en diversas regiones?
3. ¿Qué categorías fueron particularmente populares en los Estados Unidos?

## Metodología

- **Generación de gráfico para número de videos vistos por categoría y por día**: Se genera un gráfico que es capaz de mostrar las cantidades y proporciones de videos vistos en cada día por cada categoría (uno de valores absolutos y otro de valores porcentuales). Debe reaccionar al ajuste de filtros de región e intervalo de fechas.
- **Generación de gráfico de vistas totales por categoría**: Se genera un pie bar que es capaz de mostrar la proporción de videos vistos por cada categoría, entre el total de videos vistos. Debe reaccionar al ajuste de filtros de región e intervalo de fechas.
- **Generación de tabla de tendencias de videos por país y categoría**: Se genera un mapa de calor que es capaz de mostrar la cantidad de videos vista, donde se menciona la cantidad específica por cada posible combinación independiente de categoría y de región.
- **Generación de dashboard que conjunte gráficos**

## Diccionario de datos
La tabla trending_by_time:
- record_id: la clave primaria
- region: país/región geográfica
- trending_date: fecha y hora
- category_title: categoría del video
- videos_count: número de videos en la sección de tendencias
