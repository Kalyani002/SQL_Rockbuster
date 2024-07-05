select sum(a.amount),
d.title
from payment a
inner join rental b on a.rental_id=b.rental_id
inner join inventory c on b.inventory_id=c.inventory_id
inner join film d on c.film_id=d.film_id
group by (d.title)
order by sum(a.amount) asc
limit 10
