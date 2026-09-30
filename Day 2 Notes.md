DAY 2 : GROUP BY, HAVING, ORDER BY, DATES
## GROUP BY 
Groups rows that share same value in a column, we can group one or more values at a time, we can run aggregate functions(SUM, AVG, COUNT, MIN, MAX, LEN) on groups
## COUNT
Counts rows in each group, COUNT(1) is used when u don't know exactly the which one to count on groups, COUNT(COL) skips nulls.
## HAVING
Filters groups after aggregation. WHERE filters rows before grouping; HAVING filters after.
## ORDER BY
Sorts results. Default ascending; add DESC for descending.
## DATES AND EXTRACT
--Dates and Timestamps are stored as DATE / DATETIME formats.
-- Extract pulls one part of a date(year,month,day,week)
SELECT parent, COUNT(id) AS num_comments
FROM `bigquery-public-data.hacker_news.comments`
GROUP BY parent
HAVING COUNT(id) > 10
ORDER BY num_comments DESC
## What I learned / mistakes
- (e.g., can't use WHERE on an aggregate, use HAVING)
- (e.g., every non-aggregated column in SELECT must be in GROUP BY)
