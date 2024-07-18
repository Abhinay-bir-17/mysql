-- 1.1  
select * from movies;

-- 1.2 
select title, industry from moviesdb.movies;

-- 1.3
select title, industry from moviesdb.movies where industry='bollywood';
                                         
-- 1.4
select count(*) from moviesdb.movies where industry='bOllywood';
-- 1.5
select count(*) from movies;
-- 1.6 
select distinct studio from movies;
-- 1.7
select count(distinct studio ) from movies;
-- 1.8
select * from movies where title  like "%thor%";
-- 1.9
select * from movies where studio = "";

-- now exercise answers

-- q1 :Print all movie titles and release year 
 -- for all Marvel Studios movies
-- ans :
select distinct studio from movies;
select title, release_year, studio from movies where studio like "%Marvel%";

-- q2: Print all movies that have Avenger in their name
-- ans :
select * from movies where title like "%avenger%";

-- q3:Print the year in which "The Godfather" move was released
-- ans:
select  release_year from movies where title = "The Godfather";

-- q4: Print all distinct movie studios on Bollywood 
  -- industry
-- ans:
select distinct  studio from movies where industry="bollywood";
