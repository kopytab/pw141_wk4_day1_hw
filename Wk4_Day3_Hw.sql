--1. List all customers who live in Texas (use JOINs)

-- Answer = customer_id: 6, 118, 305,400,561	
-- Customer names: Jennifer Davis, Kim Cruz, Richard Mccrary, Bryan Hardison, Ian Still


select customer_id, first_name, last_name
from customer 
join address on address.address_id = customer.address_id
where district = 'Texas';

  

--2. Get all payments above $6.99 with the Customer's Full Name

-- Answer = there is 1406 payments above $6.99

select count(payment_id), first_name, last_name, amount
from customer
join payment on customer.customer_id = payment.customer_id
group by payment_id, first_name, last_name  
having amount > 6.99;



--3. Show all customers names who have made payments over $175(use subqueries)

-- Answer = none

select max(amount)
from payment;

select payment_id
from payment
where



--4. List all customers that live in Nepal (use the city table)

-- Answer = customer_id: 321
-- customer_name: Kevin Schuler


select customer_id, first_name, last_name
from customer
where address_id in(
select address_id
from address
where city_id in(
select city_id
from city
where country_id in(
select country_id 
from country
where country = 'Nepal')));


--5. Which staff member had the most transactions?	
-- Answer: staff_id: 2
-- Answer: Jon Stephens. I definitly got there the wrong way but i believe that is correct


select staff_id, first_name, last_name
from staff
where staff_id in(
select staff_id
from payment
group by staff_id
having count(payment_id) > 7300);


--6. How many movies of each rating are there?

--Answer = G: 178, PG: 194, PG-13: 223, R: 195, NC-17: 210

select count(film.film_id), rating
from film
group by rating

/*join film_category on film_category.film_id = film.film_id
join category on category.category_id = film_category.category_id 
group by name*/


--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)

-- Answer = count(customer_id): 539

select count(customer_id)
from customer
where customer_id in(
select customer_id
from payment
where amount > 6.99);

--8. How many free rentals did our stores give away?

--Answer = 24 free rentals

select count(rental_id)
from payment
where amount = 0

