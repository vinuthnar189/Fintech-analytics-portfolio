-- Q1: Which countries use ppm as the pollutant unit?
SELECT DISTINCT country
FROM `bigquery-public-data.openaq.global_air_quality`
WHERE unit = 'ppm';

-- Practice: find high-value transactions
SELECT transaction_id, customer_id, amount
FROM transactions
WHERE amount > 10000;

--Query to select all columns where pollution levels are exactly 0
zero_pollution_query ="""
select * from 
`bigquery-public-data.openaq.global_air_quality` 
where value=0
"""
--Count tables in the dataset
--How many tables are in the Chicago Crime dataset?
tables =list(client.list_tables(dataset))
num_tables = len(tables)  --Store the answer as num_tables and then run this cell

--Check your answer
q_1.check()

--Explore the table schema
--How many columns in the crime table have TIMESTAMP data?
table_ref=dataset_ref.table("crime")
table=client.get_table(table_ref)
num_timestamp_fields = len([i for i in table.schema if i.field_type=='TIMESTAMP']) # Put your answer here

--Check your answer
q_2.check()
