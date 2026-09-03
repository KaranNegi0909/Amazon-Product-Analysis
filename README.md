# Amazon Product Analysis

## 📌 Project Overview

An end-to-end Amazon Product Analysis project using **Power Query, SQL, Python, and Power BI**.

The project focuses on product categories, pricing, discounts, ratings, and customer savings to identify useful business insights.

## 🛠️ Tools & Technologies

- Excel / Power Query
- SQL
- Python
- Pandas
- Matplotlib
- Power BI
- DAX

## 🔄 Project Workflow

Raw Data → Power Query Cleaning → SQL Analysis → Python Analysis → Power BI Dashboard → Insights

## 🧹 Data Cleaning

The raw Amazon dataset was cleaned and transformed using Power Query.

Key cleaning steps:

- Removed unnecessary columns
- Split hierarchical category data into `category` and `sub_category`
- Handled missing values using `Unknown`
- Checked and corrected data types
- Performed data-quality checks
- Prepared the cleaned dataset for SQL, Python, and Power BI analysis

## 🗄️ SQL Analysis

SQL was used to analyze:

- Total and unique products
- Product distribution by category and sub-category
- Average product ratings
- Average discounts
- Product pricing
- Customer savings
- Top-rated products
- Highly discounted products
- Category performance
- Category contribution to total savings

## 🐍 Python Analysis

Python was used with Pandas and Matplotlib for:

- Exploratory Data Analysis
- Category analysis
- Rating analysis
- Discount analysis
- Pricing analysis
- Customer savings analysis
- Visualization of key findings

## 📊 Power BI Dashboard

The Power BI dashboard provides an interactive view of:

- Product categories
- Product pricing
- Discounts
- Ratings
- Customer savings
- Category performance

## 📊 Key Insights

- **Cables** was the largest product category with **190 products**, followed by **Unknown (150)** and **Smartphones (68)**.

- **CoffeePresses, PowerLANAdapters, Basic, StreamingClients, and Film** recorded the highest average product rating of **4.5**.

- **CableConnectionProtectors** had the highest average discount of **90%**, followed by **Décor (79%)** and **USBtoUSBAdapters (78%)**.

- **SmartTelevisions** generated the highest total customer savings of **₹945,527**, followed by **Unknown (₹637,987)** and **Smartphones (₹329,049)**.

- **Split-SystemAirConditioners** had the highest average discounted price at **₹42,990**, followed by **SmartTelevisions (₹25,212.33)** and **Smartphones (₹15,754.44)**.

- A significant number of products were classified as **Unknown**, highlighting an opportunity to improve product categorization and data quality.

## 💡 Business Recommendations

- Focus on high-performing categories such as **Smartphones and SmartTelevisions**.

- Review categories with extremely high discounts, especially **CableConnectionProtectors**, to ensure discounts remain profitable.

- Promote highly rated categories to improve customer confidence and product visibility.

- Use different pricing and promotional strategies for high-value categories such as **Split-SystemAirConditioners and SmartTelevisions**.

- Improve product categorization to reduce the number of **Unknown** products and improve future analysis.

## 📁 Project Files

| File | Description |
|---|---|
| `amazon.csv` | Raw Amazon dataset |
| `amazon.csv.zip` | Cleaned dataset using Power Query |
| `amazon_analysis_sql` | SQL analysis queries |
| `Amazon_Product_Analysis.ipynb` | Python analysis |
| `Amazon_analysis.pbix` | Power BI dashboard |
| `Dashboard_screenshot.png` | Dashboard preview |

## 🎯 Conclusion

This project demonstrates an end-to-end data analytics workflow, from **data cleaning and SQL analysis to Python-based analysis and Power BI visualization**, with a focus on converting raw product data into meaningful business insights.
