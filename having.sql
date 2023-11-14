use moviesdb;
select * from movies;

-- print all the years when more than 2 movies were released
select release_year , count(release_year) as cnt from movies group by release_year having cnt>2;

 