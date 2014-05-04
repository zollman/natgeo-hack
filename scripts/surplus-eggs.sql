select 
  country,unit,sum(surplus) as totalsurplus 
from fbs_eggsummary 
where 
  surplus is not null 
  and country not like '%Total%' 
  and year >=2000 and year <=2009 
group by country,unit 
order by totalsurplus asc;
