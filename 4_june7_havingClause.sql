-- 7.1
-- print all the years where more than 2 movies were
 -- released
select release_year, count(*) as cnt from movies 
  group by release_year  having cnt>2;
  
select release_year, count(*) as cnt from movies
group by release_year having cnt >2 ; 
