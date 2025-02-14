/*Write SQL queries to perform the following tasks using the Sakila database:
-----------------------------------------------------------------------------*/

use sakila ;

/* 1. List the number of films per category.
--------------------------------------------*/

select name as category, count(*) as "# per category" 
from category
join film_category using (category_id)
join film using (film_id)
group by name;

/* 2. Retrieve the store ID, city, and country for each store.
-------------------------------------------------------------*/

select store_id, city, country 
from store 
join  address using (address_id)  
join  city using (city_id) 
join country using (country_id) ;

/* 3. Calculate the total revenue generated by each store in dollars.
---------------------------------------------------------------------*/

select store_id,sum(amount) as revenue 
from store
join  staff using (store_id)  
join  payment using (staff_id)
Group by store_id ;

/* 4. Determine the average running time of films for each category.
--------------------------------------------------------------------*/

select name as category, avg(length) as "avg length" 
from category
join film_category using (category_id)
join film using (film_id)
group by name;