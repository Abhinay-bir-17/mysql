select * from movies;
-- 1) 
-- print all movies by the order of 
	-- their release year (latest first)
select title , release_year from movies order by release_year desc;

-- 2)all movies released this year in 2022
   select title, release_year from movies where release_year = 2022;
   
-- 3) ok now all the movies released after 2020
select * from movies where release_year > 2020 and imdb_rating >8;

-- select all movies that are not from marvel studios
select * from movies where studio not in ("marvel studios");

   