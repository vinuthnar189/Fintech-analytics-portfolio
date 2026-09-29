Day 1 : Bigquery + Select, FROM, WHERE
BIGquery- is a webservice that let's you apply sql to huge datasets.
Structure: project > dataset > table
In Kaggle I connected using the BigQuery client, then explored the dataset's tables and their schema before writing queries
## SELECT
Chooses which columns to return.
## FROM
Says which table the data comes from.
## WHERE
Filters rows based on a condition.
## Example
SELECT city 
FROM 'bigquery-public-data.openaq.global_air_quality`
Where country='us'
## What I learned / mistakes
- (e.g., table names need backticks in BigQuery)
- (e.g., text values need single quotes)
- (e.g., check the schema first so you know the column names)
