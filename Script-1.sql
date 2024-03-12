SELECT *
from actor;

select first_name, last_name from actor;

select first_name, last_name 
from actor
where first_name = 'Nick';


select first_name, last_name 
from actor
where first_name = 'Nick' and last_name = 'Wahlberg';

select first_name, last_name 
from actor
where first_name like 'Nick';

select first_name, last_name 
from actor
where first_name like 'N%';

select first_name, last_name 
from actor
where first_name like 'N______';


select * from payment;

select payment_id, amount
from payment
where amount >= 7.99
order by amount;


select payment_id, amount
from payment
where amount < 2.99
order by amount desc;

select payment_id, amount
from payment
where amount between 2.99 and 7.99
order by amount;

select payment_id, amount
from payment
where amount <> 0.00
order by amount;

select sum(amount)
from payment;


select customer_id, sum(amount) as "Customer_Total"
from payment
group by customer_id;


select count(customer_id) as "Payments_Made", customer_id, sum(amount) as "SUM"
from payment
group by customer_id;

select avg(amount)
from payment;




select min(amount) from payment where amount > 7.99;

select customer_id
from payment
group by customer_id
having count(customer_id) > 10;






