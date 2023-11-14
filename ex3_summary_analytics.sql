use moviesdb;
select * from movies;
-- 1. How many movies were released between 2015 and 2022
select count(*) from movies where release_year between 2015 and 2022;

-- 2. Print the max and min movie release year
select  max(release_year), min(release_year) from movies;

-- 3. Print a year and how many movies were released in that year starting with the latest year
select  release_year, count(release_year) from movies group by release_year  order by release_year desc;
