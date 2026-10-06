# Kimia Farma Business Performance Analysis

## 📌 Project Overview

This project delivers a comprehensive evaluation of Kimia Farma’s business operations from January 2020 through December 2023, leveraging historical transaction records. The core focus areas include sales dynamics, profitability trends, product performance, regional distribution, as well as overall customer and branch experiences.

The workflow integrates **Google BigQuery** for robust data preparation and SQL-driven analysis, coupled with **Looker Studio** to design an interactive, executive-ready business intelligence dashboard.

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

## 📊 Dashboard
https://datastudio.google.com/reporting/93cf0820-5617-4110-8ddf-a50ad1effd43





