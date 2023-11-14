-- joining more than 2 tables : 
select * from movies;
select m.movie_id , m.title, ac.name, ac.actor_id from movies m join 
movie_actor as ma on m.movie_id = ma.movie_id join
actors as ac on ac.actor_id = ma.actor_id;

-- to get yash, sanjay in 1 exact cell , wht can u do?
select * from movie_actor;
select * from actors;

-- below is giving error
select m.title,m.movie_id, ac.name 
from movies m 
join movie_actor ma on m.movie_id=ma.movie_id
join  actors ac on ac.actor_id= ma.actor_id 
group by m.movie_id;

-- below works
select m.movie_id, group_concat(ac.name )
from movies m 
join movie_actor ma on m.movie_id=ma.movie_id
join  actors ac on ac.actor_id= ma.actor_id 
group by movie_id;

-- now 1st colm shud be actors, 2nd colms must be
-- all the movies in which this actor has
-- a role , how to do?
select  ac.name , group_concat(m.title), count(m.title) as movies from movies m
join movie_actor ma on m.movie_id = ma.movie_id join
actors ac on ac.actor_id = ma.actor_id group by ac.name
order by count(m.title) desc;

