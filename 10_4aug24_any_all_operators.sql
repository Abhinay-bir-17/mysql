-- select actors in any of these movies(1o1, 110, 121)
select * from actors;
select * from movie_actor;
-- doing it using joins 
select ac.name, m.movie_id, m.title from movies m join movie_actor ma on
m.movie_id=ma.movie_id
join actors as ac on ma.actor_id=ac.actor_id where
m.movie_id in (101,110,121);
select * from actors;
select * from movie_actor;
-- doing it with an subquery 
select * from actors where actor_id in
( select actor_id from movie_actor where 
movie_id in(110,121,101));
-- same as above query but using 'any'
select * from actors where actor_id = any
( select actor_id from movie_actor where 
movie_id in(110,121,101));
/* select all movies whose rating is greater than any of the 
marvel movies rating */
select * from movies;

select * from movies m where imdb_rating > all
(select imdb_rating from movies where studio like "%Marvel%");

select * from movies where imdb_rating > (select 
min(imdb_rating) from movies where studio like "%Marvel%");

