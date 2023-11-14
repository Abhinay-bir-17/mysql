use moviesdb;
select * from movies;

-- show movies with rating > 9
select * from movies where imdb_rating>=9; 

-- movies of yr pandemic
select * from movies where release_year in (2022,2021);

--  show null values in imdb rating
select * from movies where imdb_rating is null;

--  show null values in imdb rating is not ntull
select * from movies where imdb_rating is not null;

-- highest rated bolly movie
select * from movies where industry = 'Bollywood' 
order by imdb_rating desc , release_year asc;
