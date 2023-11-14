select * from food_db.items;
select * from food_db.variants;

-- cross join
select * from food_db.items cross join food_db.variants;

--  adding colms using concat
select *, concat(name + " " + variant_name) as full_name, concat(price + variant_price) as full_price  from food_db.items cross join food_db.variants;

-- join financials and movies tables
select m.movie_id, title, budget, revenue, currency, 
unit, concat(revenue-budget) as profit 
from  movies m join financials f
on m.movie_id = f.movie_id  
where industry='Bollywood'  order by profit;
          
-- using case stmnts
select m.movie_id, title, budget, revenue, currency, 
unit, 
case        
	when unit='Billions' then (revenue-budget)*1000
    when unit='Thousands' then (revenue-budget)/1000
    else (revenue-budget)
end as profit_in_million
from  movies m join financials f
on m.movie_id = f.movie_id  
where industry='Bollywood'  order by profit_in_million;