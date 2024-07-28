select m.movie_id, title, budget, revenue,currency,
unit, case 
		when unit='Billions' then (revenue-budget)*1000
        when unit ='Thousands' then (revenue-budget)/1000
        else (revenue-budget)
		end as profit_millions, (revenue-budget)as
        profit
from movies m 
left join financials f using(movie_id)
where industry='Bollywood' order by profit_millions desc;

