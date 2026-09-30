-- Q1: Which items get the most comments (more than 10)?
SELECT parent, COUNT(id) AS num_comments
FROM `bigquery-public-data.hacker_news.comments`
GROUP BY parent
HAVING COUNT(id) > 10;

--Q2: Which day of the week has the most accidents?
SELECT EXTRACT(DAYOFWEEK FROM timestamp_of_crash) AS day_of_week,
       COUNT(*) AS num_accidents
FROM `bigquery-public-data.austin_crashes.crashes`
GROUP BY day_of_week
ORDER BY num_accidents DESC;
--Government expenditure on education Requirements:
--Your results should have the country name rather than the country code. You will have one row for each country.
--The aggregate function for average is AVG(). Use the name avg_ed_spending_pct for the column created by this aggregation.
Order the results so the countries that spend the largest fraction of GDP on education show up first.
SELECT country_name,AVG(value) as avg_ed_spending_pct
                          FROM `bigquery-public-data.world_bank_intl_education.international_education`
                          WHERE indicator_code='SE.XPD.TOTL.GD.ZS' and (year>=2010) and (year <2017)
                          GROUP BY country_name
                          ORDER BY avg_ed_spending_pct desc
--You should have one row for each indicator code.
--The columns in your results should be called indicator_code, indicator_name, and num_rows.
--Only select codes with 175 or more rows in the raw database (exactly 175 rows would be included).
--To get both the indicator_code and indicator_name in your resulting DataFrame, you need to include both in your SELECT statement (in addition to a COUNT() aggregation). This requires you to include both in your GROUP BY clause.
--Order from results most frequent to least frequent.
SELECT indicator_code, indicator_name,count(1) as num_rows
FROM `bigquery-public-data.world_bank_intl_education.international_education`
WHERE year=2016
GROUP BY indicator_code, indicator_name
HAVING count(1)>=175
ORDER BY num_rows desc
