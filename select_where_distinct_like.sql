use moviesdb;
select * from movies;
select title, industry from movies;
-- all movies form bolly industry 
select * from movies where industry = 'Bollywood';

-- # bolly movies 
select count(*) from movies where industry = 'bollywood';

-- # distinct industries
select distinct industry from movies;

--  # show all thor mvoies
select * from movies where title  like '%thor%'; 

-- rows where studio is empty
select * from movies where studio =''; 