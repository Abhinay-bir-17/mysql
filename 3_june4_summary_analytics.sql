
-- 1
select max(imdb_rating) from movies;
select avg(imdb_rating) from movies where industry='bollywood';
-- 2
select min(imdb_rating) as min_rating, max(imdb_rating) as max_rating from movies;

-- 3.3 group by 
select industry, count(*) from movies group by industry;
-- 3.4
select studio , count(*) from movies group by studio ;
select studio , count(*) from movies group by studio order by count(*) desc; 
--  3.5 industry, movie cnt, avg rating
select industry, count(*), avg(imdb_rating) from movies group by industry;
 -- exercise problems now
 
 -- 3.6 how many movies were released between 
	-- 2015 nd 2022
select count(*) from movies where release_year between 2015 and 2022;
 -- 3.7 print the max nd min movie release year
 select max(release_year), min(release_year) from movies;
 -- 3.8 print a year nd how many movie were release
select release_year, count(*) from movies group by release_year order by release_year desc;

  select release_year, count(*) as cnt from movies 
  group by cnt;
    select release_year, count(*) as cnt from movies 
  group by release_year;