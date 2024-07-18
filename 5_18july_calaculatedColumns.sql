select * from actors;
-- get current ages of all actors 
select curdate();
select year(curdate());
select name , year(curdate())-birth_year as age from actors order by age asc;

select * from financials;
select *, (revenue-budget) as profit from financials;
select *, if(currency='usd', revenue*100, revenue)  as revenue_inr from financials;

--  convert profit to same unit nd currecny, so 
-- for  unit convert into millions nd currecy to inr
select * from financials;
select distinct unit from financials;
select *, 
	case
		when unit='thousands' then case
			when currency='inr' then revenue/1000
            when currency='usd' then (revenue*100)/1000
            end 
        when unit='billions' then case
			when currency='usd' then revenue*1000*100
            when currency='inr' then revenue*1000
			end 
        else case
        when currency='usd' then revenue*100
        else revenue end
	end as revenue_milln,
    	case
		when unit='thousands' then case
			when currency='inr' then budget/1000
            when currency='usd' then (budget*100)/1000
            end 
        when unit='billions' then case
			when currency='usd' then budget*1000*100
            when currency='inr' then budget*1000
			end 
        else case
        when currency='usd' then budget*100
        else budget end
	end as budget_milln
from financials;

/*exercise problem: print profit% for all movies*/
-- think abt the query below, it gives error 
select *, 
	case
		when unit='thousands' then case
			when currency='inr' then revenue/1000
            when currency='usd' then (revenue*100)/1000
            end 
        when unit='billions' then case
			when currency='usd' then revenue*1000*100
            when currency='inr' then revenue*1000
			end 
        else case
        when currency='usd' then revenue*100
        else revenue end
	end as revenue_milln,
    	case
		when unit='thousands' then case
			when currency='inr' then budget/1000
            when currency='usd' then (budget*100)/1000
            end 
        when unit='billions' then case
			when currency='usd' then budget*1000*100
            when currency='inr' then budget*1000
			end 
        else case
        when currency='usd' then budget*100
        else budget end
	end as budget_milln, ((revenue_milln - budget_milln)/(budget_milln))*100 as profit_perc
from financials;
