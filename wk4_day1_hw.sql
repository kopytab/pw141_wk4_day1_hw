--1. How many actors are there with the last name ‘Wahlberg’? 
--Answer = 2

select count(last_name)
from actor
where last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99? 
--Answer = 5,607

select count(payment_id)
from payment
where amount between 3.99 and 5.99;

--3. What film does the store have the most of? (search in inventory) 
--Answer = confused because it appears its a 70ish way tie.

select film_id, count(inventory_id)
from inventory
group by film_id
;

--4. How many customers have the last name ‘William’? 
--Answer = 0. Unless 'William' is supposed to be 'Williams' then the answer 1

select *
from customer
where last_name = 'William';

--5. What store employee (get the id) sold the most rentals?
--Answer = id: 1

select staff_id, count(rental_id)
from rental
group by staff_id;

--6. How many different district names are there? 
--Answer = 603

select distinct count(district) 
from address;

--7. What film has the most actors in it? (use film_actor table and get film_id) 
--Answer = film_id 508

select 
film_id, count(actor_id)
from film_actor
group by film_id
order by count desc ;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
--Answer = 13

select count(last_name) 
from customer
where last_name like '%es' and store_id = 1;

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
-- Answer = 0 but i feel like that is incorrect

select count(amount)
from payment
group by customer_id
having count(rental_id) > 250 and customer_id between 380 and 430;

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
-- Answer = 5 ratings categories, PG-13 has the most

select rating, count(film_id)
from film
group by rating
;




