/* select the actor id, actor name and total no
of movies they acted in*/
-- 1st implementation
select ac.actor_id, ac.name, count(movie_id)as movies_cnt  from actors ac join
movie_actor ma on ac.actor_id = ma.actor_id group by actor_id
order by movies_cnt desc;

-- 2nd implementation
select * from actors;
select ac.actor_id, ac.name,count(*) as cnt from actors ac join movie_actor
ma on ac.actor_id = ma.actor_id  group by actor_id 
order by cnt desc;

-- now the same query as above + group concat
select ac.actor_id, ac.name,count(*) as cnt, 
group_concat(ma.movie_id) from actors ac join movie_actor
ma on ac.actor_id = ma.actor_id  group by actor_id 
order by cnt desc;

-- now using subquery 
select * from actors;
select * from movie_actor;
select ac.actor_id, ac.name, dt.cnt from actors ac
join (select actor_id, count(*) as cnt, group_concat(movie_id) 
from movie_actor group by actor_id order by cnt desc)as 
dt on ac.actor_id = dt.actor_id;
-- read the below abhinay
-- https://dev.mysql.com/doc/refman/8.4/en/correlated-subqueries.html
-- using co-related query
select actor_id, name, (select count(*) from 
movie_actor where actor_id= actors.actor_id)as cnt from 
actors order by cnt desc;