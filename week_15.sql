-- Use simple SQL queries to play with the data.
-- Find 2 cool facts hidden within the data (e.g., most popular interests).

USE Netflix_Shows;

-- Below command that there are only two types of netflix shows in it (Movie and TV Show)
SELECT DISTINCT type FROM shows;
SELECT COUNT(DISTINCT type) no_of_shows FROM shows;

-- Below query reveals that there are 74 different years that the netflix shows were released
-- with 1925 being the earliest release year and 2021 being the latest release year
SELECT DISTINCT release_year FROM shows ORDER BY release_year DESC;


-- Use basic SQL queries like (COUNT, AVG, and SUM) to understand more about the data you have.

-- Gets the total number of shows
SELECT COUNT(show_id) no_of_shows FROM shows;

-- There are 2676 Tv Shows and 6131 movies
SELECT COUNT(type) no_of_shows FROM shows where type='Movie';
SELECT COUNT(type) no_of_shows FROM shows where type='TV Show';

-- Finds 4525 different directors with most shows not having a director
SELECT director, Count(director) no_of_shows FROM shows GROUP BY director;

-- what are popular shows in different countries?
SELECT country, title FROM shows WHERE country IN ('Vietnam', 'Uruguay')
ORDER BY country;

-- who are the cast for a show like blood and water
SELECT title, cast FROM shows WHERE title='Blood & Water';

SELECT country, title, rating FROM shows WHERE country IN ('Uruguay', 'Vietnam') ORDER BY rating;

