/*Write SQL queries to perform the following tasks using the Sakila database:
-----------------------------------------------------------------------------*/

/* 1. List the number of films per category.
--------------------------------------------*/

select cat.name, count(*)  from category cat inner join  film_category fc on cat.category_id = fc.category_id  inner join film fm on fm.film_id = fc.film_id  group by cat.name;

/* 2. Retrieve the store ID, city, and country for each store.
-------------------------------------------------------------*/

select store_id, city, country from store a inner join  address b on a.address_id = b.address_id inner join  city c on b.city_id=c.city_id inner join country d on c.country_id=d.country_id;

/* 3. Calculate the total revenue generated by each store in dollars.
---------------------------------------------------------------------*/



/* 4. Determine the average running time of films for each category.
--------------------------------------------------------------------*/
