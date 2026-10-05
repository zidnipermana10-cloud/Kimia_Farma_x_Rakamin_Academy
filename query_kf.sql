CREATE OR REPLACE TABLE 
`rakamin-kf-analytics-510503.kimia_farma.kf_analytics` AS
SELECT
  --Transaction
  t.transaction_id,
  t.date,
  t.branch_id,
  --Branch
  c.branch_category,
  c.branch_name,
  c.kota,
  c.provinsi,
  --Rating
  c.rating AS rating_cabang,
  --Customers
  t.customer_name,
  --Product
  t.product_id,
  p.product_name,
  p.product_category,
  t.price AS actual_price,
  --Discount
  t.discount_percentage,
  --Gross Profit
  CASE
    WHEN t.price <= 50000 THEN 0.10
    WHEN t.price <= 100000 THEN 0.15
    WHEN t.price <= 300000 THEN 0.20
    WHEN t.price <= 500000 THEN 0.25
    ELSE 0.30
  END AS persentase_gross_laba,
  --Net Sales
  ROUND(
    t.price * (1 - t.discount_percentage), 2
  ) AS nett_sales,
  --Net Profit
  ROUND(
    (
      t.price * (1-t.discount_percentage)
    )
    *
    CASE
      WHEN t.price <= 50000 THEN 0.10
      WHEN t.price <= 100000 THEN 0.15
      WHEN t.price <= 300000 THEN 0.20
      WHEN t.price <= 500000 THEN 0.25
      ELSE 0.30
  END,
  2
  ) AS nett_profit,
  --Rating
   t.rating AS rating_transaksi

  FROM `rakamin-kf-analytics-510503.kimia_farma.kf_final_transaction` AS t
  LEFT JOIN `rakamin-kf-analytics-510503.kimia_farma.kf_kantor_cabang` AS c
    ON t.branch_id = c.branch_id
  LEFT JOIN `rakamin-kf-analytics-510503.kimia_farma.kf_product` AS p
    ON t.product_id = p.product_id;