# Kimia Farma Business Performance Analysis

## 📌 Project Overview

This project delivers a comprehensive evaluation of Kimia Farma’s business operations from January 2020 through December 2023, leveraging historical transaction records. The core focus areas include sales dynamics, profitability trends, product performance, regional distribution, as well as overall customer and branch experiences.

The workflow integrates **Google BigQuery** for robust data preparation and SQL-driven analysis, coupled with **Looker Studio** to design an interactive, executive-ready business intelligence dashboard.

## 🎯 Objectives

The primary goals of this data initiative are to:

- Assess overall revenue generation and profitability metrics
- Identify leading high-performance product lines
- Examine regional performance and sales distribution across provinces
- Analyze the correlation between discount strategies and profit margins
- Pinpoint operational gaps, such as branches with high branch ratings versus lower transaction ratings
- Investigate behavioral patterns in customer purchasing habits

## 🗂️ Dataset

The analysis draws from four core enterprise datasets:

- `kf_final_transaction` — Transactional records and customer demographics
- `kf_inventory` — Inventory tracking and stock metrics
- `kf_kantor_cabang` — Retail branch profiles and location data
- `kf_product` — Product catalog and pricing attributes

These disparate datasets were joined and streamlined into a centralized master table designated as:
`kf_analytics`

## 🛠️ Tools & Technologies

- **Google BigQuery** — Cloud data warehousing, data transformation, and SQL query execution
- **Looker Studio** — Dynamic dashboard creation and executive data visualization

## 🔄 Data Preparation

- The source datasets were unified using relational SQL `JOIN` statements anchored on primary keys such as `product_id` and `branch_id`.
- Key derived fields and metrics were engineered using custom calculations, including **Net Sales**, **Net Profit**, and **Gross Profit Percentage**.
- Rigorous data validation routines were implemented to guarantee data hygiene, addressing potential anomalies like duplicate records and missing values.

## 📊 Dashboard Highlights

The resulting insights are compiled into a multi-page interactive Looker Studio dashboard featuring:

### Business Performance
- Total Sales Revenue & Net Profit
- Overall Profit Margin & Total Completed Orders
- Longitudinal Sales & Profit Trends

### Product & Regional Performance
- Top-Selling Products & Product Category Performance
- Provincial Sales Breakdown & Profitability Distribution

### Profitability & Customer Experience
- Discount vs. Profit Impact Analysis
- Top Customer Ranking & Purchase Frequency Distribution
- Branch Rating vs. Transaction Rating Comparison

## 🔍 Key Insights

The analytical findings uncover crucial behavioral trends in Kimia Farma’s commercial landscape, highlighting regional performance variances, profit drivers, discount elasticities, and customer-branch interaction dynamics. Comprehensive analytical findings and actionable strategic recommendations are available in the project presentation.

## 📁 Project Structure

```text
Kimia-Farma-Business-Analysis/
│
├── README.md
│
├── SQL/
│   ├── clean_final_table.sql
│   ├── data_quality_check.sql
│   └── analysis.sql
│
├── Dashboard/
│   ├── dashboard_1.png
│   └── dashboard_2.png
│
└── Presentation/
    └── project_presentation.pdf
