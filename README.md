🛍️ Customer Purchase Intelligence: Retail Analytics Project
📖 Project Overview

Retail companies collect massive transaction data but often struggle to convert it into actionable business decisions.

This project analyzes 3,900 retail transactions to uncover how customer demographics, purchasing habits, discounts, and subscriptions influence:

Revenue growth
Customer loyalty
Product strategy
Marketing effectiveness

The project simulates a real-world analytics workflow using:

Python → Data cleaning & feature engineering
PostgreSQL → Business analysis & SQL queries
Power BI → Interactive dashboard & storytelling
🎯 Business Objective

The goal of this project is to answer the key business question:

How can a retailer leverage customer shopping data to improve engagement, increase revenue, and optimize marketing and product strategies?

📂 Dataset Summary

Records: 3,900 transactions
Features: 18 columns

Data Categories

Customer Profile

Age
Gender
Location
Subscription Status

Purchase Details

Item purchased
Category
Purchase amount
Season, size, color

Shopping Behavior

Discount usage
Purchase frequency
Shipping type
Review rating

Data Quality Note

37 missing values in Review Rating column handled using category median imputation.
🧹 Data Preparation (Python)

Key steps performed:

Loaded and explored dataset using pandas
Handled missing values using median rating per category
Standardized column names (snake_case)
Created new features:
age_group
purchase_frequency_days
Removed redundant columns (promo_code_used)
Loaded cleaned data into PostgreSQL

📁 Folder: python/

🗄️ SQL Business Analysis

Business questions answered using PostgreSQL:

Revenue comparison by gender
High-spending customers who use discounts
Top-rated products
Shipping type vs spending behavior
Subscribers vs non-subscribers revenue comparison
Products most dependent on discounts
Customer segmentation (New / Returning / Loyal)
Top products per category
Relationship between repeat buyers & subscriptions
Revenue contribution by age group

📁 Folder: sql/

📊 Power BI Dashboard

An interactive dashboard was built to help stakeholders explore:

Revenue by demographics
Customer segments & loyalty
Product performance
Impact of discounts & subscriptions
Shipping and purchasing behavior

📁 Folder: dashboard/

🔍 Key Insights
Subscribers generate higher average order value
Express shipping customers spend more per purchase
Loyal customers are strong candidates for subscription programs
Some products rely heavily on discounts (margin risk)
Certain age groups contribute disproportionate revenue
💡 Business Recommendations

1️⃣ Expand Subscription Program
Target repeat buyers with exclusive benefits.

2️⃣ Launch Loyalty Program
Encourage repeat purchases and long-term retention.

3️⃣ Optimize Discount Strategy
Reduce blanket discounts and focus on high-converting products.

4️⃣ Promote High-Rated Products
Use customer reviews to drive marketing campaigns.

5️⃣ Invest in High-Value Customer Segments
Focus marketing spend on demographics with higher revenue impact.

🛠️ Tools & Technologies
Python (Pandas, NumPy)
PostgreSQL
Power BI
Git & GitHub
📁 Repository Structure
customer-shopping-analysis/
│
├── data/
├── python/
├── sql/
├── dashboard/
├── images/
└── README.md
👤 Author

Prithvi Ashok
Aspiring Data Analyst | Business Intelligence Enthusiast
