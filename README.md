# 📊 Complete Data Analytics Portfolio Project

> An end-to-end data analytics project covering Python, SQL, and Power BI — built to demonstrate real-world data analyst skills.

---

## 📌 Overview

This project showcases a complete data analytics workflow — from raw data ingestion to interactive dashboards and business presentations. It reflects the day-to-day responsibilities of a Data Analyst and is structured to be portfolio-ready and recruiter-friendly.

---

## 📂 Dataset

| Property | Details |
|----------|---------|
| **Name** | Customer_Shopping_Behavior Dataset |
| **Source** | Kaggle / Public Dataset |
| **Format** | CSV |
| **Size** | ~10,000 rows |
| **Key Columns** | Customer ID, Age, Gender, Purchase Amount, Category, Season, Payment Method, etc. |

---

## 🛠️ Tools & Technologies

| Layer | Tool |
|-------|------|
| **Language** | Python 3.x |
| **Data Analysis** | Pandas, NumPy, Matplotlib, Seaborn |
| **Database** | PostgreSQL|
| **Dashboard** | Microsoft Power BI |
| **Version Control** | Git & GitHub |
| **Environment** | Jupyter Notebook|

---

## 🔢 Steps

### Step 1 — Load the Dataset (Python)
- Imported the CSV dataset using `pandas`
- Inspected shape, data types, and null values
- Performed initial data profiling

### Step 2 — Exploratory Data Analysis (EDA)
- Analyzed distributions of key variables (Age, Purchase Amount, etc.)
- Identified trends across categories, seasons, and gender
- Visualized insights using `matplotlib` and `seaborn`

### Step 3 — Data Cleaning
- Handled missing values and duplicates
- Standardized column names and data types
- Encoded categorical variables where required
- Exported cleaned dataset for SQL ingestion

### Step 4 — SQL Queries
- Created a database and imported the cleaned dataset
- Wrote queries to answer key business questions:
  - Top spending categories
  - Revenue by season and gender
  - Average order value by age group
  - Payment method preferences
- Used `GROUP BY`, `JOINs`, `CTEs`, and Window Functions

### Step 5 — Power BI Dashboard
- Connected Power BI to the SQL database
- Built interactive visuals: bar charts, KPIs, slicers
- Multi-page dashboard: Sales Overview, Demographics, Category Performance

---

## 📊 Dashboard

> 📁 See `/dashboard/CustomerAnalytics.pbix` for the full Power BI file

**Key Metrics:** Total Revenue · Avg Purchase Value · Customer Segments · Top Categories · Seasonal Trends

---

## 📈 Results & Key Insights

- 🔵 **Clothing** was the top-selling category across all seasons
- 🟢 **Fall** had the highest purchase frequency
- 🟡 Customers aged **25–45** contributed to 60%+ of total revenue
- 🔴 **Credit Card** was the most preferred payment method
- ⭐ High-rated customers showed significantly higher repeat purchases

---

## 🚀 How to Run

### 1. Clone the Repository
```bash
git clone https://github.com/AhbabKhan28/data-analytics-project.git
cd data-analytics-project
```

### 2. Install Python Dependencies
```bash
pip install -r requirements.txt
```

### 3. Run the Jupyter Notebook
```bash
jupyter notebook notebooks/analysis.ipynb
```

### 4. Set Up the Database
```sql
psql -U postgres -f sql/setup.sql
```

### 5. Open Power BI Dashboard
- Open `dashboard/CustomerAnalytics.pbix` in Power BI Desktop
- Refresh the data source connection

---

## 📁 Project Structure
```
📦 data-analytics-project
 ┣ 📂 data
 ┃ ┣ raw_data.csv
 ┃ ┗ cleaned_data.csv
 ┣ 📂 notebooks
 ┃ ┗ analysis.ipynb
 ┣ 📂 sql
 ┃ ┣ setup.sql
 ┃ ┗ queries.sql
 ┣ 📂 dashboard
 ┃ ┗ CustomerAnalytics.pbix
 ┣ 📂 presentation
 ┃ ┗ project_slides.pdf
 ┣ 📜 requirements.txt
 ┗ 📜 README.md
```

---

## 🙋‍♂️ Author

**Mohammad Ahbab Khan**  
📧 ahbabkhan2805@email.com  
🔗 [LinkedIn](www.linkedin.com/in/mohammad-ahbab-khan-ba54aa25a) | [GitHub](https://github.com/AhbabKhan28)

> ⭐ If you found this helpful, give it a star on GitHub!
