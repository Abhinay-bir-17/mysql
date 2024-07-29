select * from actors;-- actor_id name birth_year
select * from movie_actor;-- movie_id actor_id

-- joining 3 tables
select m.movie_id, title,ac.name as actors from
movies m join movie_actor ma on 
m.movie_id=ma.movie_id
join actors ac on ac.actor_id=ma.actor_id;

-- now do group by on above sql query
select m.movie_id, title,group_concat(ac.name) as actors
  from 
movies m  join movie_actor ma on m.movie_id=ma.movie_id
join actors ac on ma.actor_id=ac.actor_id group by m.movie_id;

-- now grouping using some other colm
select group_concat(m.movie_id), title,group_concat(ac.name) as actors
  from 
movies m  join movie_actor ma on m.movie_id=ma.movie_id
join actors ac on ma.actor_id=ac.actor_id group by title;

-- putting all select colms in group by clause
select m.movie_id, title,ac.name as actors from
movies m join movie_actor ma on 
m.movie_id=ma.movie_id
join actors ac on ac.actor_id=ma.actor_id
group by m.movie_id, m.title, ac.name;

-- actor is 1st colm, 2nd colms is all movies of this actor
-- how to do this ??

select ac.name, group_concat(m.title), count(m.title) as cnt 
from actors ac join movie_actor ma
on ac.actor_id=ma.actor_id join movies m on 
m.movie_id =ma.movie_id group by ac.name order by cnt desc;

-- exercise prblems
select * from financials;
select * from languages;
select * from movies;
select m.title, f.revenue,f.currency,f.unit, 
	case  
		when unit='Billions' then revenue*1000
        when unit ='Thousands' then revenue/1000
        else revenue
    end as revenue_mln, l.name
from movies m 
join financials f on m.movie_id=f.movie_id
join languages l on l.language_id=m.language_id
where 
;
