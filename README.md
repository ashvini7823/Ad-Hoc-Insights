# 📊 Ad Hoc Insights - Resume Project Challenge 4

## 📌 Project Overview
This project involves analyzing sales, pricing, and market trends for Atliq Hardwares using SQL. The insights generated from this analysis are intended to assist top-level management in making data-driven decisions.

## 🏢 About the Company
Atliq Hardwares (an imaginary company) is one of the leading computer hardware producers in India and has expanded into international markets.

## ❗ Problem Statement
The management at Atliq Hardwares has noticed a lack of actionable insights for making quick and informed business decisions. They want to strengthen their data analytics team by hiring junior analysts who can effectively extract valuable insights from data.

## 🎯 Task
As an applicant for this role, the following tasks were completed to demonstrate SQL skills:

1. Review the **'ad-hoc-requests.pdf'**, which contains 10 ad hoc business questions requiring insights.
2. Execute **SQL queries** to generate answers to these requests.
3. Create a **presentation** for top-level management to showcase insights in a structured format.
4. Ensure **concise, data-driven insights** with engaging visuals and structured storytelling.
5. Maintain a **professional presentation style** with a clear narrative for business impact.

---

## 📂 Dataset Overview

| Table Name | Description |
|------------|-------------|
| **dim_customer** | Customer-related data, including platform and region. |
| **dim_product** | Product details like category, segment, and variant. |
| **fact_gross_price** | Gross price information for each product. |
| **fact_manufacturing_cost** | Cost incurred in the production of each product. |
| **fact_pre_invoice_deductions** | Pre-invoice deductions for each product. |
| **fact_sales_monthly** | Monthly sales data, including quantity sold. |

---

## 📌 Ad Hoc Requests & Insights

### 1️⃣ Provide the list of markets in which customer **"Atliq Exclusive"** operates its business in the APAC region.

**📊 Visualization**

![Ad-Hoc Request 1 Visualization](link-to-image)

🔗 **Query:** [View SQL Query](link-to-query)

💡 **Insight:** "Atliq Exclusive" operates in **eight key markets** across the APAC region: **India, Indonesia, Japan, Philippines, South Korea, Australia, New Zealand, and Bangladesh.**

---

### 2️⃣ What is the percentage of unique product increase in 2021 vs. 2020?

**📊 Visualization**

![Ad-Hoc Request 2 Visualization](link-to-image)

🔗 **Query:** [View SQL Query](link-to-query)

💡 **Insight:** Unique products increased from **245 in 2020 to 334 in 2021**, a **36.33% growth**.

---

### 3️⃣ Provide a report with all the unique product counts for each segment and sort them in descending order.

**📊 Visualization**

![Ad-Hoc Request 3 Visualization](link-to-image)

🔗 **Query:** [View SQL Query](link-to-query)

💡 **Insight:** **Notebook (129) and Accessories (116)** dominate product count, followed by **Peripherals (84)**. **Desktops (32), Storage (27), and Networking (9)** have fewer products.

---

### 4️⃣ Which segment had the most increase in unique products in 2021 vs 2020?

**📊 Visualization**

![Ad-Hoc Request 4 Visualization](link-to-image)

🔗 **Query:** [View SQL Query](link-to-query)

💡 **Insight:** **Accessories (+34), Notebooks (+16), and Peripherals (+16)** showed the highest growth. **Desktops (+15) grew despite having the lowest count, while Storage (+5) and Networking (+3) had minimal growth.**

---

### 5️⃣ Get the products that have the highest and lowest manufacturing costs.

**📊 Visualization**

![Ad-Hoc Request 5 Visualization](link-to-image)

🔗 **Query:** [View SQL Query](link-to-query)

💡 **Insight:** **AQ HOME Allin 1 Gen 2** has the **highest manufacturing cost (₹240.53)**, while **AQ Master wired x1 Ms** has the **lowest (₹0.89)**, indicating a **diverse pricing strategy**.

---

### 6️⃣ Generate a report on the top 5 customers who received the highest pre-invoice discount percentage in FY 2021 (Indian market).

**📊 Visualization**

![Ad-Hoc Request 6 Visualization](link-to-image)

🔗 **Query:** [View SQL Query](link-to-query)

💡 **Insight:** Discount percentages among the top 5 customers are **closely clustered (~1.5%)**, indicating a **standardized discount structure**.

---

### 7️⃣ Get the complete report of the **Gross Sales Amount** for "Atliq Exclusive" by month.

**📊 Visualization**

![Ad-Hoc Request 7 Visualization](link-to-image)

🔗 **Query:** [View SQL Query](link-to-query)

💡 **Insight:** **Sales in FY 2021 consistently outperformed FY 2020, showing a positive trend.**

---

### 8️⃣ In which quarter of 2020 was the **maximum total_sold_quantity** recorded?

**📊 Visualization**

![Ad-Hoc Request 8 Visualization](link-to-image)

🔗 **Query:** [View SQL Query](link-to-query)

💡 **Insight:** **Sales declined from Q1 to Q3, with a slight recovery in Q4.**

---

### 9️⃣ Which channel brought more gross sales in FY 2021 and what is its contribution percentage?

**📊 Visualization**

![Ad-Hoc Request 9 Visualization](link-to-image)

🔗 **Query:** [View SQL Query](link-to-query)

💡 **Insight:** The **Retailer channel (₹1,219.08M, 73.23%)** led gross sales, followed by **Direct (₹257.53M, 15.47%)** and **Distributor (₹188.03M, 11.30%)**.

---

### 🔟 Get the **Top 3 products in each division** with the highest total_sold_quantity in FY 2021.

**📊 Visualization**

![Ad-Hoc Request 10 Visualization](link-to-image)

🔗 **Query:** [View SQL Query](link-to-query)

💡 **Insight:** **N & S and P & A divisions dominate sales, while PC lags behind significantly.**

---

## 📚 Key Learnings
### **Technical Skills Gained:**
✅ SQL window functions (RANK, DENSE_RANK, ROW_NUMBER)  
✅ Aggregate functions and complex joins  
✅ Subqueries and CTEs for structuring data  
✅ Performance optimization in SQL queries  
✅ Data storytelling through SQL-driven insights  

### **Soft Skills Developed:**
✅ Business problem-solving mindset  
✅ Crafting structured, executive-level presentations  
✅ Effective data visualization techniques  
✅ Communicating complex findings concisely  

---

## 🔚 Conclusion
This project successfully analyzed various business-critical aspects of Atliq Hardwares, providing valuable insights for decision-making through SQL-driven data exploration.

---

## 🙌 Special Thanks
This project is part of **CodeBasics' Resume Project Challenge 4**. Huge thanks to CodeBasics for this opportunity to work on a SQL project! 🎉

---

📢 If you found this project insightful, give it a ⭐ on GitHub! 🚀

