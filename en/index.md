---
layout: default
title: Luis Andrés Aponte San Román
permalink: /en/
---

<div align="right">
  <strong>Change language:</strong> 
  <a href="../">Español</a> | <u>English</u>
</div>


[LINKEDIN: Luis Andres Aponte San Roman](https://www.linkedin.com/in/luis-andres-aponte-san-roman/) 

📧 [MICROSOFT OUTLOOK: andres_laasr20@outlook.com](mailto:andres_laasr20@outlook.com)

📱 +52 5539249978

*Hello! Welcome to my projects portfolio of Data Analysis.*

# About me

Mechanical engineer and ERP consultant certified in data analysis with solid experience in strategic data extraction, cleaning, and modeling.

Specialist in the full data lifecycle: from the extraction and cleaning of large volumes of information, to predictive modeling and interactive dashboard design. I automate ETL workflows to reduce processing times and transform complex data into visual dashboards that guide business decisions.

### Technical skills
* Data analysis and management using **Microsoft Excel / Power Query / DAX / Power Pivot / SQL / Python**
* Python libraries domain: **Pandas / NumPy / Matplotlib / Seaborn / SciPy / Scikit-learn**
* Data visualization and storytelling using **Tableau / Power BI / Microsoft Excel**
* Information transfer between systems using **API / Postman**
* Digitalization of business operations using **ERP (Microsoft Dynamics 365 ERP's)**
* AI adoption as an assistant and optimizer of my deliverables using **GitHub Copilot / Copilot / Gemini 3.1 Pro**
* Generation of process flowcharts using **Microsoft Visio**
* Management of milestones and project tasks using **Azure DevOps**
* Data project documentation and coding using **Jupyter Notebooks / Visual Studio / PostgreSQL / Microsoft SQL Server**
* Project documentation management using **Microsoft SharePoint / Microsoft OneDrive**

### Soft skills
Data analysis | Problem solving | Storytelling | Effective communication | Critical thinking | Teamwork | Results orientation | Organization | Time, priority and risks management | Proactivity | Attention to detail | Process Optimization | Continuous learning

## Project Index

### Area: Business Data Patterns Analysis
* [Expense Optimization for Event Ticketing Distributor](#expense-optimization-for-an-entertainment-event-ticket-distributor)
* [Customer Churn Analysis for Gym Service](#customer-retention-analysis-for-a-gym)

### Area: Dashboards and Visualization
* [Category Trend Analysis on YouTube](#youtube-trending-categories-analysis)
* [Executive and Commercial Sales Analysis Dashboard for Online Store](#dashboard-for-executive-and-commercial-sales-analysis-for-online-store) 

### Area: Data Engineering and SQL
* [Trend and Churn Pattern Analysis in Subscription Service for Telecom Company](#trend-and-churn-pattern-analysis-in-subscription-services-for-a-telecommunications-company)
* [Sales Performance Analysis and Cohort Analysis](#sales-performance-analysis-and-cohort-analysis)

### Area: Analysis and Data Visualization with Excel
* [Retail Sales and Returns Intelligence. Revenue Leakage Detection via Power Pivot and DAX](#retail-sales-and-returns-intelligence-revenue-leakage-detection-via-power-pivot-and-dax)

## Selected Projects

## Expense optimization for an entertainment event ticket distributor

Showz is an event ticketing company. Prior to the execution of the project, the company was in a decision-making situation regarding the regulation of its operating expenses, seeking to identify the behavior and participation of its ad sources and devices on which the company's sales platform is enabled, with the main purpose that the generated insights provide precise clarity for decision-making regarding the optimization or dismissal of ad sources and devices.

### Tools & Data Processes

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
![Statistical Analysis](https://img.shields.io/badge/Statistical_Analysis-031796?style=for-the-badge)
![Numerical Calculus](https://img.shields.io/badge/Numerical_Calculus-031796?style=for-the-badge)

### Key questions

1. How do customers use the service?
2. When do they start buying?
3. How much money does each customer bring to the company?
4. When do revenues cover the customer acquisition cost?

### Methodology

- **Data preprocessing:** Data was cleaned and standardized, removing inconsistencies and verifying the absence of duplicates and missing values.
- **Exploratory Data Analysis (EDA):** Analysis of metrics to identify trends (between ad sources and between touch and desktop devices):
   - Conversion rate
   - Average order size
   - LTV
   - CAC
   - ROMI

- **Generation of data visualizations:** Histogram, bar, and heat map charts were defined; with the intention of having resources that allow the client to understand the metrics and discoveries obtained more easily.

### Conclusions and recommendations

**SOURCE/PLATFORM RECOMMENDATIONS**

- HIGHLY RECOMMENDED SOURCES 🏆
  - SOURCE 1 - TOP PRIORITY

  Key metrics: ROMI = 113.2%, CAC = 4.04, LTV = 1.12
  
  Rationale: Combines the best profitability with cost efficiency
  
  Recommendation: INCREASE budget by 50-100%
  
  - SOURCE 2 - HIGH PRIORITY

  Key metrics: ROMI = 43.7%, CAC = 9.05, LTV = 1.29
  
  Rationale: Profitable and generates the highest average LTV
  
  Recommendation: INCREASE budget by 30-50%
  
- SOURCES FOR CRITICAL RE-EVALUATION ⚠️
  - SOURCE 3 - IMMEDIATE ACTION REQUIRED

  Key metrics: ROMI = -70.0%, CAC = 14.74, Highest volume but massive losses
  
  Rationale: Despite generating 9,587 customers, it produces losses of 98,878
  
  Recommendation: SUSPEND temporarily and optimize strategy
  
- SOURCES TO ELIMINATE OR REDUCE 🔻
  - SOURCES 4, 5, 9, 10

  Key metrics: Negative ROMI (-11.4% to -30.9%)
  
  Rationale: All generate consistent losses
  
  Recommendation: REDUCE budget by 70% or ELIMINATE

### Featured visualizations

- **Retention rate lifecycle heatmap for Showz**

   We observe that in each cohort (month of first visit to the Showz portal) for each passing month, there is a decreasing trend in the customer retention rate (speaking in a general company sense, without distinguishing between ad sources or devices). This denotes an alert for Showz to be clear that it is relevant to conduct an in-depth investigation into which channels this loss of customer interest is occurring.

![Retention rate lifecycle heatmap](/assets/img/project_Business_Analysis/Graphic_2.png)

- **Day ranges required for customer conversion (analysis by devices)**

   It can be perceived that the "desktop" device maintains a better customer conversion behavior, since this device shows a considerable number of customers who made a purchase on the Showz platform on the very same day they registered. On the other hand, the "touch" device has a considerably lower number of customers who made a purchase on the same day they registered. The same behavioral difference in customer conversion between devices can be perceived for the other 3 day ranges.

![Bar graph of day ranges required for customer conversion](/assets/img/project_Business_Analysis/Graphic_4.png)

- **Analysis of unique customers with platform participation per unit of time**

   This analysis delivers useful information to understand behavior within the platform by different units of time (day, week, and month). Through these charts, peculiar behaviors due to holidays, seasonal behaviors during the year, among other temporal behaviors that add value to identify, can be detected.

![*Analysis of unique customers with platform participation per unit of time](/assets/img/project_Business_Analysis/Graphic_1.png)

Explore more details of the project in the [entire repository](https://github.com/AndresASR-20/AndresASR-20.github.io/tree/main/assets/projects/project_Business_Analysis).

---

## Customer retention analysis for a gym

In all industries, customer retention is essential to ensure sustainable revenue and reduce costs associated with acquiring new customers. Bringing this customer retention situation to the gym services sector, one of the most common problems faced by gyms and other services is customer churn. How do you find out if a customer is no longer with you? In the case of a gym, it makes sense to say that a customer has left if they do not come for a month. Of course, they might have gone on a trip and resume their visits when they return, but that is not a typical case. Usually, if a customer joins, comes a few times and then disappears, they are unlikely to return. Identifying the key factors influencing retention and cancellation allows the Model Fitness gym to anticipate churn risks, design effective loyalty strategies, and personalize experiences for each customer.

### Tools & Data Processes

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
![Statistical Analysis](https://img.shields.io/badge/Statistical_Analysis-031796?style=for-the-badge)
![Numerical Calculus](https://img.shields.io/badge/Numerical_Calculus-031796?style=for-the-badge)
![Data Modelling](https://img.shields.io/badge/Data_Modelling-031796?style=for-the-badge)

### Key questions

1. What demographic or behavioral factors most influence cancellation?
2. What characteristics differentiate loyal customers from those who churn?
3. How can customers be segmented to design personalized strategies?

### Methodology

- **Data preprocessing:** Data was cleaned and standardized, removing inconsistencies and verifying the absence of duplicates and missing values.
- **Explorartory Data Analysis (EDA):** Demographic and usage characteristics were analyzed, identifying patterns in customers who stay and those who cancel.
- **Predictive modeling:** Logistic regression and random forest models were trained to predict customer cancellation with an accuracy of 85% and 84%, respectively.
- **Clustering:** Customers were segmented into groups using K-means to identify similar behaviors.

### Conclusions and recommendations

#### PRIORITY TARGET GROUPS
- HIGH PRIORITY - Cluster 3 "New and young" (55.8% cancellation)

Profile: Customers 26.9 years old on average, new (1.7 months), short contracts

- MEDIUM PRIORITY - Cluster 2 "Geographically distant" (44.9% cancellation)

Profile: None live near the gym, short contracts

**Specific actions:**

- Agreements with transportation apps (Uber/taxi with discounts)
- Extended hours for greater flexibility
- Complementary virtual classes
- Referral program with special bonuses

#### MEASURES TO REDUCE CHURN

A) PREVENTIVE STRATEGIES

- For new members (first 3 months):
   - Personalized progressive goals
   - Progressive loyalty discounts

B) ACTIVE RETENTION STRATEGIES

- Monitoring warning signs:
   - Attendance frequency < 1.5 times/month → Immediate intervention
   - 1-month contracts → Automatic extension offer with benefits
   - No phone registered → Special contact campaign

#### LEVERAGING LOYAL GROUPS

##### Cluster 1 "Long-term committed" (1.5% cancellation)

Strategy: Turn them into brand ambassadors

Actions:
- VIP program with exclusive benefits
- Commissions for referring new members
- Priority access to new classes/equipment

##### Cluster 0 "VIP Promotional" (13.9% cancellation)

Strategy: Maximize the power of word-of-mouth marketing

Actions:
- Expand referral program
- Special events for associated companies
- Family/group discounts
 
#### RECOMMENDED TRACKING METRICS
- Monthly KPIs by cluster:
   - Cancellation rate by group
   - Average visit frequency
   - Average length of stay
   - ROI of specific retention programs

### Featured visualizations

- **Feature correlation heatmap**

   It was found that the features month_to_end_contract and contract_period are highly correlated (0.9), suggesting that care must be taken with multicollinearity when developing predictive models.

![Feature correlation heatmap](/assets/img/project_Data_Modelling/archivo_2.png)

- **Feature histogram based on customer status (active or canceled)**

   These types of data visualizations add considerable visual value since they can represent support to perceive the behavior of each characteristic, from an individual approach, based on customer status (active or canceled).

![Feature histogram based on customer status](/assets/img/project_Data_Modelling/archivo_3.png)

- **Dendrogram for cluster analysis**

   The dendrogram shows how customers group into distinct segments based on their characteristics, where the suggested optimal number of clusters is 4.

![Dendrogram for cluster analysis](/assets/img/project_Data_Modelling/archivo_1.png)

Explore more details of the project in the [entire_repository](https://github.com/AndresASR-20/AndresASR-20.github.io/tree/main/assets/projects/project_Data_Modelling).

---

## YouTube trending categories analysis

The advertising agency Sterling & Draper has the need to analyze video trends on YouTube to determine which content deserves marketing attention. Each video has a specific category (entertainment, music, news and politics, etc.), a region, and a date when it becomes trending. A video can be in the trending section for several consecutive days.
Each week, it is required to generate an answer to the following questions:

- What categories were trending last week?
- How were they distributed across various regions?
- What categories were particularly popular in the United States?

To provide a solution to this need, the creation of a dashboard that enables answers to the above questions is proposed. For this, the following technical requirements are gathered:

- Business objective: analyze the trending history of videos on YouTube
- How often the dashboard will be used: at least once a day
- Target user of the dashboard: video advertising planning managers
- Dashboard data content:
   - Past video trends, sorted by day and category
   - Video trends, sorted by country
   - A correspondence table between categories and countries
- Parameters for grouping data:
   - Trending date
   - Video category
   - Country

### Tools & Data Processes

![Tableau](https://img.shields.io/badge/Tableau-3262A8?style=for-the-badge)
![Data Visualization](https://img.shields.io/badge/Data_Visualization-031796?style=for-the-badge)

### Key questions

1. What categories were trending last week?
2. How were they distributed across various regions?
3. What categories were particularly popular in the United States?

### Methodology

- **Generation of chart for number of videos viewed by category and by day**: A chart is generated that is capable of showing the quantities and proportions of videos viewed each day by each category (one with absolute values and another with percentage values). It must react to the adjustment of region filters and date ranges.
- **Generation of total views chart by category**: A bar pie chart is generated that is capable of showing the proportion of videos viewed for each category out of the total videos viewed. It must react to the adjustment of region filters and date ranges.
- **Generation of video trends table by country and category**: A heatmap is generated that is capable of showing the number of videos viewed, mentioning the specific quantity for each possible independent combination of category and region.
- **Generation of a dashboard that combines charts**

### Featured visualizations

- **Chart for number of videos viewed by category and by day**

   It was found that the categories that tend to have the highest participation in videos viewed on YouTube across all data collected in the dataset are mainly entertainment, people & blogs, music, news & politics, and comedy.

![Chart for number of videos viewed by category and by day](/assets/img/project_Data_Visualization/archivo_2.png)

- **Total views chart by category**

   It was found that the categories that tend to have the highest participation in total videos viewed on YouTube across all data collected in the dataset are mainly entertainment (27.94%), people & blogs (13.15%), music (10.12%), news & politics (10.06%), and comedy (8.67%).

![Total views chart by category](/assets/img/project_Data_Visualization/archivo_3.png)

- **Video trends table by country and category**

![Video trends table by country and category](/assets/img/project_Data_Visualization/archivo_4.png)

- **Generation of a dashboard that combines charts**

![Dashboard that combines charts](/assets/img/project_Data_Visualization/archivo_1.png)

Explore more details of the project in the [entire repository](https://github.com/AndresASR-20/AndresASR-20.github.io/tree/main/assets/projects/project_Data_Visualization).

---

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

### Featured visualizations

- **Dynamic dashboard for executive analysis**

It was found that there has been a controlled and regulated behavior of business profits, despite the fact that sales have had an irregular behavior, having a peak of sales in January and March, and having the decline of sales in July. Additionally, it can be perceived that the geographical area with the highest sales participation is in Maharashtra and Madhya Pradesh, and the worst business participations occur in areas like Sikkim and Haryana. 

![Executive Dashboard](/assets/img/project_Data_Visualization_Online_Sales/Screenshot_2026_07_07_113817.png)

- **Dynamic dashboard for commercial analysis**

It was found that there is a variability in the participation of each gender in the sales of the business, being observable that the female gender had a greater participation between March to mid-July, while the male gender had a greater participation during the remaining period of the year. Additionally, it could be detected that the product categories preferred by customers in general are Saree, Hankerchief, and Stole; keeping said participation individually by gender. 

![Commercial Dashboard](/assets/img/project_Data_Visualization_Online_Sales/Screenshot_2026_07_07_113947.png)

Explore more details of the project in the [entire repository](https://github.com/AndresASR-20/AndresASR-20.github.io/tree/main/assets/projects/project_Data_Visualization_Online_Sales).

---

## Trend and Churn Pattern Analysis in Subscription Services for a Telecommunications Company

This project consisted of the strategic analysis and optimization of the customer retention ecosystem for a growing telecommunications company. The main objective was to centralize and structure massive information from its subscriber database (detailing demographic profiles, tenure, contract types, and payment methods) along with the breakdown of consumption across its suite of advanced services (DSL and fiber optic connectivity, cybersecurity tools, technical support, and streaming platforms). With this raw database, a rigorous cleaning and transformation process was implemented in PostgreSQL, converting inconsistent records into a unified analytical environment that balances a high-level financial diagnosis with an analysis of users' operational behavior.

The solution allows the business to continuously monitor its commercial health by tracking critical retention KPIs such as the global Churn rate, the impact on lost monthly revenue, accumulated Customer Lifetime Value, and service adoption density per user. To respond to the strategic needs of the company, the analysis was structured to identify the main red flags in the operation. As a result of the project, an automated Early Warning model was designed and implemented in SQL to proactively isolate the top 500 active customers with the highest probability of leaving based on their consumption patterns. Thanks to this, the business now has a key analytical asset to transition from a reactive stance to a proactive strategy, streamlining commercial decision-making and allowing the Marketing and Customer Success teams to deploy hyper-targeted loyalty campaigns to safeguard the company's revenue.

### Tools and Data Process

![SQL](https://img.shields.io/badge/SQL-3262A8?style=for-the-badge)
![Postgre SQL](https://img.shields.io/badge/PostgreSQL-3262A8?style=for-the-badge)
![Exploratory Data Analysis](https://img.shields.io/badge/Exploratory_Data_Analysis-031796?style=for-the-badge)
![Trends Analysis](https://img.shields.io/badge/Trends_Analysis-031796?style=for-the-badge)
![Data Cleaning](https://img.shields.io/badge/Data_Cleaning-031796?style=for-the-badge)
![Data Transformation](https://img.shields.io/badge/Data_Transformation-031796?style=for-the-badge)
![Logical and Conditional Modelling](https://img.shields.io/badge/Logical_and_Conditional_Modelling-031796?style=for-the-badge)
![Financial Analysis](https://img.shields.io/badge/Financial_Analysis-031796?style=for-the-badge)

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

### Methodology

- **Data standardization and type conversion**: The transformation of the `TotalCharges` column was executed by removing empty records and reconfiguring its data type to a floating-point numeric value (`FLOAT`), correcting structural inconsistencies at the source and ensuring the integrity of the financial analysis.
- **Quantification of financial and volumetric impact**: Aggregation queries were developed to determine the global Churn rate, the exact volume of attrition, and the leakage of recurring monthly revenue (`MonthlyCharges`), contrasting these metrics with the accumulated historical value (`TotalCharges`) of retained customers.
- **Technical infrastructure evaluation and segmentation**: Consumption profiles were grouped and analyzed according to the type of internet service (`InternetService`), isolating cancellation rates and average costs to identify operational discrepancies in the Fiber Optic offering.
- **Product adoption density analysis**: A conditional logic matrix was implemented using `CASE WHEN` statements to sum the volume of contracted value-added services, measuring the direct correlation between the level of *cross-selling* and long-term user loyalty.
- **Lifecycle mapping and critical windows**: A time cohorst analysis was structured by grouping tenure (`tenure`) into quarterly and semi-annual ranges, successfully locating the period of time with the greatest operational vulnerability with pinpoint precision.
- **Contractual and operational audit**: Attrition behavior was broken down by crossing legal billing schemes (`Contract`) and invoicing methods (`PaperlessBilling`), identifying the latent risk in non-automated payment models.
- **Early Warning model design**: A predictive query based on business rules was built to proactively filter and extract a list of the 500 active customers with the highest accumulated risk index, prioritized by their financial value for the deployment of immediate retention campaigns.

### Conclusions and Recommendations

- **Proactive contract migration**: Implement financial or operational incentive campaigns (such as doubling internet speed or gifting months of streaming services) aimed exclusively at "Month-to-month" customers, motivating them to sign a 1 or 2-year commitment to plunge their Churn rate from 42% to less than 11%.
- **Preventive packaging of value-added services**: Configure commercial bundles that include Technical Support (`TechSupport`) and Online Security (`OnlineSecurity`) free of charge for the first few months or natively integrated into Fiber Optic plans, taking advantage of the fact that users with these services show a three times higher retention rate.
- **Infrastructure and expectation audit in Fiber Optic**: Initiate an urgent technical review and satisfaction analysis in areas with Fiber Optic coverage, given that, despite being the service with the highest average billing ($93 USD), it records a critical attrition rate that exceeds 40%.
- **Direct debit and automatic payment incentives**: Launch a one-time bonus program (e.g., a $5 USD discount on the next bill) to encourage customers who use Electronic Check (the method with the worst Churn, close to 45%) to migrate their accounts toward automatic charges with a Credit Card or Bank Transfer.
- **Reinforcement of Onboarding in the initial lifecycle**: Redesign the customer support and attention strategy (*Customer Success*) during the first 90 days following contraction, concentrating retention efforts on this critical temporal window that concentrates the largest volume of historical cancellations.
- **Psychological mitigation of digital billing**: Optimize the format of electronic billing notifications (`PaperlessBilling = Yes`) for digital profiles, adding automated summaries of the benefits and volume of data consumed in the month in order to justify the value of the service and counteract its 33% propensity to abandon.
- **Activation of the Early Warning protocol**: Immediately deploy the automated list of the Top 500 high-risk customers to the advanced retention and Call Center teams, allowing proactive loyalty calls to be made before users initiate the cancellation process.

### Featured Visualizations

- **Control metrics for monthly income loss**

It was found that the business's global Churn rate stands at a critical 26.54%, which represents a total base of 1,869 lost customers. The direct financial impact of this attrition translates into a recurring monthly leakage of $139,130.85 USD in billed charges, which evidences that abandonment not only affects user volume but severely destabilizes the operational cash flow month after month.

![Tasa de Churn e Impacto Mensual](/assets/img/project_Trends_Analysis_SQL/Respuesta_1.png)

- **Financial audit of the accumulated historical value**

It was found that the accumulated loss from customers who abandoned the company amounts to an alarming figure of $2.86 million USD in `TotalCharges`. By contrasting this data with the $13.19 million USD generated by the retained customer base, it is shown that historical attrition has drained nearly 18% of the business's total lifecycle value, confirming that Churn is the main inhibitor of long-term financial growth.

![Análisis de Cargos Totales Acumulados](/assets/img/project_Trends_Analysis_SQL/Respuesta_2.png)

- **Operational evaluation by type of internet infrastructure**

A troubling operational paradox was found at the core of the business's connectivity: Fiber Optic records an alarming Churn rate of 41.89%, despite being the service that generates the highest average charge for the company ($93.90 USD). In contrast, customers with DSL service show substantially more stable behavior with an attrition rate of just 18.96% and a charge of $58.10 USD, pointing to a serious quality or technical dissatisfaction issue in the high-speed offering.

![Análisis de Churn por Servicio de Internet](/assets/img/project_Trends_Analysis_SQL/Respuesta_3.png)

- **Impact evaluation of assistance and protection services**

Value-added services were found to act as a massive retention anchor for the business. Customers who lack Online Security or Technical Support record critical Churn rates exceeding 41% in both cases. Conversely, enabling these solutions drastically reduces abandonment to ranges between 14% and 15%, demonstrating that active assistance and digital protection shield user loyalty and mitigate friction with the company.

![Impacto de TechSupport y OnlineSecurity](/assets/img/project_Trends_Analysis_SQL/Respuesta_4.png)

- **Correlation between product density and customer loyalty**

An inversely proportional relationship was found between the volume of contracted value-added services and the propensity to abandon. Customers who do not have any additional service present a critical Churn of 49.85%, while those who integrate a robust ecosystem of 5 or 6 services reduce their attrition rate to minimal levels between 3% and 5%. These results prove that *cross-selling* strategies not only increase the average ticket but are the most effective mechanism to ensure retention.

![Análisis de Churn por Cantidad de Servicios Adicionales](/assets/img/project_Trends_Analysis_SQL/Respuesta_5.png)

- **Lifecycle mapping and temporal vulnerability of the customer**

The period of greatest attrition risk was found to be critically concentrated in the first months of relationship with the company. New customers with less than a year of seniority (`tenure < 12`) record an alarming Churn rate of 47.44%, concentrating the largest volume of business losses. As the user lifecycle progresses and exceeds the 24-month barrier, loyalty stabilizes drastically, with Churn falling below 14%, highlighting the urgency of shielding the experience during the first year.

![Tasa de Churn por Rangos de Antigüedad](/assets/img/project_Trends_Analysis_SQL/Respuesta_6.png)

- **Audit of contractual schemes and commercial stability**

The business's contractual flexibility was found to represent its greatest financial vulnerability. Customers under the "Month-to-month" (`Month-to-month`) modality exhibit a critical Churn rate of 42.71%, concentrating the vast majority of the company's cancellations. In radical contrast, long-term loyalty schemes demonstrate an almost absolute operational shield, reducing abandonment to 11.27% in one-year contracts and to a minuscule 2.83% in two-year contracts, confirming the need to incentivize scheme migration.

![Impacto del Tipo de Contrato en el Churn](/assets/img/project_Trends_Analysis_SQL/Respuesta_7.png)

- **Audit of payment gateways and transactional behavior**

Financial collection channels were found to have a direct and disproportionate impact on retention. Users who use Electronic Check (`Electronic check`) as a payment method record a critical Churn rate of 45.29%, becoming the business's main transactional leak. Conversely, customers who adopt automated methods such as Credit Card or Bank Transfer show substantially lower attrition, ranging between 15% and 16%, which evidences the urgency of desincentivizing manual collection processes.

![Análisis de Churn por Método de Pago](/assets/img/project_Trends_Analysis_SQL/Respuesta_8.png)

- **Audit of billing methods and digital friction**

Forced digitalization of billing was found to introduce a psychological friction or convenience factor that impacts retention. Users subscribed to paperless billing (`PaperlessBilling = Yes`) record a Churn rate of 33.57%, a substantially higher figure compared to the 16.33% of those who still receive their traditional physical invoice (`PaperlessBilling = No`). This pattern suggests that digital payment reminders or the lack of a tangible statement elevate the propensity to abandon the service.

![Impacto del Método de Facturación en el Churn](/assets/img/project_Trends_Analysis_SQL/Respuesta_9.png)

- **Design of the Early Warning model for proactive retention**

It was found that the concentration of financial risk can be isolated through business rules-based algorithms. By crossing the critical variables identified in the analysis (Month-to-month contract, use of Electronic Check, and zero adoption of support services), it was possible to segment and extract an automated predictive list with the 500 active customers with the highest probability of abandonment. This approach allows the retention team to move from a reactive posture to a proactive strategy, intervening in accounts with aggregated financial value before the cancellation is formalized.

![Estrategia de Alerta Temprana e Intervención](/assets/img/project_Trends_Analysis_SQL/Respuesta_10.png)

Explore more project details in the [full repository](https://github.com/AndresASR-20/AndresASR-20.github.io/tree/main/assets/projects/project_Trends_Analysis_SQL).

---

## Sales Performance Analysis and Cohort Analysis

This project consisted of the strategic analysis and centralization of massive transactional data from Microsoft SQL Server (T-SQL) to diagnose customer retention and optimize the commercial portfolio of a major e-commerce marketplace in Latin America. Following a rigorous data ingestion and typing process in SSMS, three advanced analysis models were developed: a horizontal cohort matrix that measures user lifecycles through conditional pivoting; a ranking of "star products" by category using window functions (DENSE_RANK()) to mitigate inventory risks; and a temporal smoothing model using ROWS BETWEEN to calculate the 7-day moving average of demand, isolating the natural volatility of weekends.

The solution provides the company with a key analytical asset that transforms millions of records into a managerial decision-making map for the Growth Marketing, Logistics, and Purchasing teams. Thanks to this diagnosis, the business can transition from purely intuitive management to a proactive strategy, enabling the design of hyper-targeted loyalty campaigns for the highest-value star products, accurately predicting distribution capacity with carriers, and redefining user retention efforts to safeguard and boost the company's revenue.

### Key Tools and Data Process

![SQL](https://img.shields.io/badge/SQL-3262A8?style=for-the-badge)
![Microsoft SQL Server](https://img.shields.io/badge/microsoft_sql_server-3262A8?style=for-the-badge)
![Exploratory Data Analysis](https://img.shields.io/badge/exploratory_data_analysis-031796?style=for-the-badge)
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

### Methodology

- **Data ingestion, cleaning, and structural typing**: Flat file importation to **SSMS** was executed, and source inconsistencies were corrected by reconfiguring complex data types, transforming unique identifiers into strings (`VARCHAR`), commercial amounts into decimal values (`DECIMAL(10,2)`), and timestamps into native date formats (`DATETIME`), guaranteeing the integrity of time-based calculations.
- **Chronological isolation and temporal truncation**: Date normalization logic was implemented using the mathematical combination of the `DATEADD` and `DATEDIFF` functions on the first purchase record (`MIN`), successfully truncating raw timestamps to the first day of their corresponding month for the exact establishment of starting periods.
- **Analytical cohort modeling and conditional pivoting**: Sequential common table expressions (CTEs) were structured to calculate the customer maturity index, and through advanced conditional aggregation statements (`COUNT DISTINCT` with `CASE WHEN`), a vertical record stream was transformed into a horizontal matrix that maps user lifecycles and retention leakage.
- **Inventory partitioning and ranking**: Catalog dimensions were unified with order records via multiple `JOINs`, applying the analytical window function `DENSE_RANK() OVER (PARTITION BY ... ORDER BY ...)` to compactly segment and extract the Top 3 highest-grossing products for each business category without omitting fair ties.
- **Demand smoothing via Window Framing**: A daily moving aggregation model was developed by applying the row restriction clause `ROWS BETWEEN 6 PRECEDING AND CURRENT ROW`, effectively isolating volatility, transactional noise, and the natural weekly seasonality to expose the real trend of logistics capacity.
- **Filtering and operational status debugging**: Rigorous business rules were integrated into the persistence layer using condition filters (`WHERE order_status = 'delivered'`), mitigating data bias caused by canceled or pending orders and ensuring that retention and billing conclusions were based exclusively on actual consolidated revenue.

### Conclusions and Recommendations

- **Campaign restructuring toward high-value tickets**: Reorient the digital advertising budget of the Growth Marketing team to preferentially promote products identified in the Top 3 by revenue (such as the leading ID in `health_beauty` which generates over $63k USD), prioritizing profit margins over items that only drive low-cost logistics volume.
- **Supplier diversification in monopolized categories**: Initiate negotiation meetings to onboard new sellers within the Bed and Bath (`bed_bath_table`) category, mitigating the critical centralization risk where the number-one star product absorbs nearly the entirety of demand and exposes the platform to a revenue collapse in the event of stockouts.
- **Implementation of post-purchase loyalty incentives (Cross-Selling)**: Design an automation strategy for email marketing and discount coupons valid exclusively for the 30 and 60 days following the first transaction, aiming to break the inertia of the current model where less than 1% of a cohort's users return to make a second purchase in the short term.
- **Logistics capacity planning based on smoothed demand**: Deploy the 7-day moving average model (`Media_Movil_Ordenes_7D`) on the distribution center's operational dashboards, allowing the logistics team to predict and contract the necessary carrier fleet based on the real demand trend, isolating noise and false alarms caused by natural weekend volume drops.
- **Fidelization and safeguarding of strategic sellers**: Develop an exclusive benefits and reduced commissions program for sellers controlling Top 1 products in highly competitive and fragmented categories (such as `watches_gifts`), ensuring the permanence of their catalogs on Olist against the temptation to migrate to competitor platforms.
- **Isolation and auditing of lagging orders at month-end**: Establish a joint review protocol between the Operations and Customer Service teams during the final weeks of each month to unlock and accelerate the transition to 'delivered' status for pending orders (a critical phenomenon observed in August 2018), preventing delivery lags from negatively impacting brand perception and analytical repurchase tracking.
- **Transition to a dynamic portfolio ecosystem**: Automate the ranking script (`DENSE_RANK`) to run on a seasonal (quarterly) basis, allowing the commercial team to proactively detect which products are losing traction against new trends and ensuring that the marketplace's main banners always display the items with the highest organic conversion of the moment.

### Featured Visualizations

- **Cohort analysis matrix for repurchase rate diagnosis**

The query revealed a flat transactional structure with low horizontal retention throughout the entire user lifecycle. Taking the cohort with the highest acquisition traction, 2017-11 (with 7,060 initial customers) as an example, it is observed that only 40 users returned to make a second transaction in Mes_1 (an immediate retention rate of 0.56%), stabilizing at marginal levels toward Mes_6 with only 8 active customers. This widespread behavior across all cohorts demonstrates that Olist's growth has critically depended on a massive new user acquisition engine, highlighting the lack of an organic long-term loyalty ecosystem.

![Cohort analysis matrix](/assets/img/project_Sales_Trend_Analysis_SQL/Respuesta_1.png)

- **Commercial portfolio hierarchy and star product identification**

Through hierarchical segmentation by category, the analysis exposed sharp operational discrepancies between logistics volume and the financial value of items. In the Bed and Bath vertical (bed_bath_table), the leading product (99a478...) demonstrates absolute market dominance with 488 units sold that consolidated $43,025.56, creating a critical dependency gap against its Top 3 counterpart (84f456...), which only generated $10,304.96. On the other hand, in high-end categories such as Babies (baby), the Top 1 product (25c385...) leads revenue with $38,907.32 despite registering just 38 units sold, confirming that inventory optimization and campaigns must be segmented by ticket value and not by warehouse turnover.

![Commercial portfolio hierarchy and star product identification](/assets/img/project_Sales_Trend_Analysis_SQL/Respuesta_2.png)

- **Temporal smoothing and analytical stabilization of daily demand**

The moving average calculation demonstrates how the extreme volatility of daily operations can distort the diagnosis of actual demand if evaluated in isolation. During the operational kickoff in October 2016, an isolated peak is observed on 2016-10-04 with $8,595.89 in raw sales and 54 orders, which drops drastically toward 2016-10-09, registering just $2,399.70. By applying the 7-day analytical function (Media_Movil_Ventas_7D), the flow progressively stabilizes, showing a smoothed curve of $3,057.61 that climbs steadily up to $5,309.36, isolating seasonal weekend drops and providing a reliable indicator for carrier fleet logistics planning.

![Temporal smoothing and analytical stabilization of daily demand](/assets/img/project_Sales_Trend_Analysis_SQL/Respuesta_3.png)

---

## Retail Sales and Returns Intelligence. Revenue Leakage Detection via Power Pivot and DAX

This project consisted of diagnostic analysis and the design of an executive analytical architecture on massive transactional data to identify revenue variability and audit the return rate in a multinational e-commerce platform. Following a rigorous data ingestion, cleansing, and typing process in Power Query (M), a dimensional model was built in Power Pivot powered by DAX measures to isolate the bias of cancellations on actual sales. Advanced temporal and geographic analyses were developed, uncovering the phenomenon of temporal lag, where massive post-holiday season returns exceeded current-period sales volume, revealing an inventory carryover effect from previous cycles.

The solution equips senior management and Operations, Finance, and Supply Chain teams with a high-level interactive Dashboard that transforms over half a million records into a tactical decision roadmap. Thanks to this dashboard, the company can transition from passive sales monitoring to proactive commercial risk management, enabling the auditing of the real impact of returns on petty cash, restructuring product return policies to mitigate capital leakage, and optimizing the expansion strategy in key international markets such as Netherlands, Ireland, and Germany.

### Tools and Data Process

![Microsoft Excel](https://img.shields.io/badge/Microsoft_Excel-3262A8?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Power Query](https://img.shields.io/badge/Power_Query-3262A8?style=for-the-badge&logo=powerbi&logoColor=black)
![Power Pivot](https://img.shields.io/badge/Power_Pivot-3262A8?style=for-the-badge&logo=microsoft&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-3262A8?style=for-the-badge&logo=microsoft&logoColor=white)
![Data Visualization](https://img.shields.io/badge/Data_Visualization-031796?style=for-the-badge)

### Key Questions

- 📊 Executive Management and Finance (Strategy and Cash Flow)
1. What is the real volume of net revenue generated by the business after deducting the impact of returns?
2. What is the global capital leakage percentage due to returns, and does it remain within acceptable e-commerce margins?
3. How do returns impact cash flow during the first quarter (Q1) compared to year-end (Q4)?
- 🌍 Growth, Marketing, and International Expansion
4. If we exclude the dominant market (United Kingdom), which are the top 3 international countries by sales volume to focus acquisition campaigns on?
5. Are there international countries that, despite strong sales, exhibit abnormally high return rates that jeopardize ad spend profitability?
- 📦 Operations, Logistics, and Customer Service
6. In which months of the year does the operation suffer from the "temporal lag" phenomenon, where processed returns threaten to exceed monthly sales?
7. What is the real reach of the active customer base sustaining the company's transactional volume?
- 🗓️ Seasonal Analysis and Commercial Planning
8. How do purchasing behavior and return rates vary when comparing year-over-year performance from 2010 vs. 2011?
9. Which months represent the sales "low season" where the commercial team must activate promotions to stimulate demand?

### Methodology

- **Ingestion, cleansing, and structural typing in Power Query:** Ingestion of massive transactional volume into Power Query was executed, applying rigorous cleansing on raw data to fix source inconsistencies; non-commercial operational descriptions (AMAZON FEE, POSTAGE, inventory adjustments) were purged, and data types were reconfigured by assigning text format to stock/invoice codes (StockCode, InvoiceNo), currency decimal values to unit prices (UnitPrice), and native timestamps (DateTime), guaranteeing the technical integrity of the model.
- **Transaction isolation and credit note logic:** A conditional business rule was implemented to segment the nature of records, identifying regular invoices against returns/cancellations by detecting the 'C' prefix in the invoice identifier and negative values in quantity (Quantity < 0), establishing the syntactical foundation to isolate returns without corrupting gross totals.
- **Dimensional modeling and dynamic metrics development in DAX:** A robust data model was structured in Power Pivot by building optimized analytical measures in DAX; the SUMX function combined with FILTER was used to calculate absolute pure sales (Quantity > 0) and the consolidated return amount (ABS(Quantity)), integrating the DIVIDE function with error handling to obtain the real return rate (Return_Rate) and DISTINCTCOUNT to count the actual unique customer base.
- **Diagnosis of the temporal lag phenomenon:** Month-over-month temporal variation analysis was designed to audit atypical return spikes, identifying and documenting the post-holiday season inventory carryover effect (where returns processed in January from December purchases generated return rates exceeding 100% in specific products), allowing the diagnosis of bottlenecks in return windows without altering the mathematical integrity of the sources.
- **Geographic isolation and market ranking (Top 10):** Combined behavioral filters were configured in the visual layer to isolate the dominant market (United Kingdom) and evaluate international trade performance, enabling field-level multi-filtering to dynamically rank the Top 10 countries with the highest pure revenue volume (Total_only_sales), eliminating visual noise from marginal markets and rescaling comparison bars.
- **Executable layout and Dashboard UX/UI architecture:** The Excel canvas was transformed into an executive-level interactive interface by removing native spreadsheet elements (gridlines, headings, and formula bars), structuring floating KPI cards with contrasting corporate color palettes (Navy Blue for revenue and Soft Coral/Red for alerts), and linking horizontal data slicers by year, month, and country to enable seamless real-time analytical exploration.

### Featured Visualizations

- **Executive sales analytics and return rate dashboard:** The solution integrates a consolidating dashboard that showcases a clean, interactive analytical architecture designed for executive decision-making. By isolating the primary United Kingdom market, a pure sales volume of **$1,298,794 USD** generated by **7,814 unique customers** is observed, recording a global return amount of **$486,428 USD** with a return rate of **4.76%**. The temporal trend chart clearly highlights the *temporal lag* phenomenon, where returns processed in December reach nearly **30.00%** of monthly revenue due to the carryover of purchases from previous periods. Meanwhile, international geographic ranking places **Netherlands** and **Ireland (EIRE)** at the forefront of the global market with revenue exceeding **$250,000 USD** each, followed by **Germany** and **France**, consolidating key regions for company expansion.

![Sales and Returns Analytics Dashboard](/assets/img/project_Excel_eCommerce_Performance/imagen_1.png)

Explore more details of the project in the [full repository](https://github.com/AndresASR-20/AndresASR-20.github.io/tree/main/assets/projects/project_Excel_eCommerce_Performance).
