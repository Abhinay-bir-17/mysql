-- count(*)
select count(*) from movies where industry = 'Bollywood';
select count(*) from movies ;

-- change the name of colm of below result
select max(imdb_rating) from movies;
select max(imdb_rating) as burr from movies;

-- #movies in each industry
select count(*), industry from movies group by industry;
select count(*), industry, avg(imdb_rating) as avg_rating from movies group by industry order by avg_rating desc;



