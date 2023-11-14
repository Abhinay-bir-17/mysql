select * from  moviesdb.financials;
select * from moviesdb.movies;

-- using inner join join the financials and movies table

 -- inner join returns intersectn of 2 tables
select * from movies m inner join financials f on m.movie_id = f.movie_id;
-- union
-- left join can also be written as left outer join
select * from movies m left join financials f on m.movie_id = f.movie_id;

-- now 'using' , only common colms come in (here)
select * from movies m left join financials f using (movie_id);
