CREATE DATABASE netflix;
use netflix;

SELECT *  from netflix_titles;
select count(*)
as total_content
from netflix_titles;
------ Count Movies vs TV Shows----
SELECT COUNT(*) AS total_titles FROM netflix_titles;

------- Count Movies vs TV Shows----

SELECT type, COUNT(*) AS count
FROM netflix_titles
GROUP BY type;

/*Unique Countries in Data*/
SELECT DISTINCT country FROM netflix_titles
WHERE country IS NOT NULL;

/*Total Shows by Country*/

SELECT country, COUNT(*) AS total
FROM netflix_titles
GROUP BY country
ORDER BY total DESC
LIMIT 10;
---- Most Recent Shows Added---
SELECT title, date_added
FROM netflix_titles
ORDER BY STR_TO_DATE(date_added, '%M %d, %Y') DESC
LIMIT 10;
/*Titles Added Each Year*/
SELECT YEAR(STR_TO_DATE(date_added, '%M %d, %Y')) AS year_added,
       COUNT(*) AS total
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY year_added
ORDER BY year_added DESC;

--- Top 10 genres/categories
SELECT listed_in, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;
/*Movies longer than 2 hours*/
SELECT title, duration
FROM netflix_titles
WHERE type = 'Movie'
  AND duration LIKE '%min'
  AND CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) > 120;
  /* Top 10 directors with most content */
  SELECT director, COUNT(*) AS total
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total DESC
LIMIT 10;
/* Movies longer than 2 hours */
SELECT title, duration
FROM netflix_titles
WHERE type = 'Movie'
  AND duration LIKE '%min'
  AND CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) > 120;

/* Top 10 countries with most titles */ 
SELECT country, COUNT(*) AS total
FROM netflix_titles
GROUP BY country
ORDER BY total DESC
LIMIT 10;






