-- select a movie with the highest imdb rating
select * from movies;
select * from movies order by imdb_rating desc limit 1;
-- now do the above using subquery

select * from movies where 
imdb_rating=(select max(imdb_rating) from movies);

select max(imdb_rating) from movies;
-- select movies which have the min nd max rating
select * from movies where imdb_rating in
( (select max(imdb_rating) from movies),
(select min(imdb_rating) from movies) );
select max(imdb_rating),min(imdb_rating) from movies;

-- show actor details with age > 75 and age < 80
select *, ( year(curdate())- birth_year) as age  from
actors having age between 75 and  80;

-- now do it using nest query
select * from (select *, (year(curdate()) - birth_year)
	as age from actors
 ) as derived_table where age between 75 and 85;