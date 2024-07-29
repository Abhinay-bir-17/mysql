select * from financials;
select * from movies;

select * from movies m join  financials f on 
m.movie_id = f.movie_id;

select m.movie_id, title, revenue from movies m
join financials f on m.movie_id = f.movie_id;

select m.movie_id, title, revenue from movies m
right join financials f on m.movie_id = f.movie_id;
/*all colms inside using tells which colm to use
while joining ex : (movie_id, studio)*/
select * from movies m join financials f 
using (movie_id);
-- select * from movies m join financials f 
-- using (movie_id, title);

-- exercise problems
/*show all movies and its language names*/
select * from languages;
select m.movie_id, m.title , l.name from movies m left join languages l using (language_id);
/*show all telugu movie names, assume udk abt lang i
id for telugu, so for this join*/ 
select m.movie_id,title, l.name from movies m join languages l using (language_id) where l.name='Telugu';
/*3. show lang nd number of  movies released in 
that lang*/
select l.name, count(*) from movies m left join languages l using (language_id) group by l.name;
select l.name, count(m.movie_id) as no from languages l left join movies m using (language_id)
group by language_id;