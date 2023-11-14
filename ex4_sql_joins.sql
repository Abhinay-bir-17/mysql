use moviesdb;
select * from movies;
select * from languages;
-- 1. Show all the movies with their language names
select m.title, l.name from movies m  join languages l using(language_id);

-- 2. Show all Telugu movie names (assuming you don't know the language
    -- id for Telugu)
select * from movies where industry='Bollywood' and imdb_rating>8;
select m.title, l.language_id, l.name from movies m left join languages l on l.language_id=m.language_id where l.name='Telugu';

-- 3. Show the language and number of movies released in that language
select l.name, count(*) from movies m  join languages l on l.language_id = m.language_id  group by l.language_id;

