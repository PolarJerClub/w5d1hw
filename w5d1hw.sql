-- Intro query, select all records from the actor table
SELECT *
FROM actor;

--query for first_name and last_name from the actor table
SELECT first_name, last_name
FROM actor;

-- query for a girst_name that equals Nick using the Where clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- query for first_name that is LIKE Nick
SELECT first_name, last_name, actor_id
FROM actor
WHERE first_name LIKE 'Nick';

--% wild card = can take the place of any character
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

-- query for all first_name data that starts with the letter K and is followed by 2 characters using the where clause -- __
SELECT first_name, actor_id FROM actor WHERE first_name LIKE 'K__';

SELECT first_name, actor_id FROM actor WHERE first_name LIKE 'K_m';

-- query for all first_name data thta starts with a K and ends with th
-- using the where clause with both wildcard and underscore
SELECT first_name, last_name, actor_id FROM actor WHERE first_name LIKE 'K%th';

-- comparison operators
-- greater than > less than <
-- greater or equal >= less than or equal <=
-- not equal <>

-- explore data from payment table with SELECT ALL query *
-- good idea to grab all data from a new table so you know what you're working with
SELECT *
FROM payment;

-- query for data that show customers who paid
-- an amount greater than $3
SELECT customer_id, amount
FROM payment
WHERE amount > 3.00;

-- query for customers who paid under 7.99 for specific rentals
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount < 7.99;

-- query for payments that were greater than or equal to 5.99
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount >= 5.99;

--query for payments that were less than or equal to 2.99
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount <= 2.99;

-- ORDER BY
-- BETWEEN
-- query for all data ordered by amount
SELECT *
FROM payment
ORDER BY amount ASC; -- defaults to ascending

-- order by descending
SELECT *
FROM payment
ORDER BY amount DESC;

-- query for data that shows customers who paid an amount BETWEEN 2.00 and 7.99
-- using WHERE, BETWEEN, and AND
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.99 AND 5.99;

-- query for all customers who paid over 0.00
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount;

-- SQL Aggregations --> SUM(), AVG(), COUNT(), MIN(), MAX()

-- query to display sum of amounts paid over 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

-- average amount for payments over 4.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- query to display the COUNT of amounts paid
SELECT COUNT(amount) FROM payment WHERE amount > 5.99;

-- query to display the DISTINCT COUNT of amounts paid <-- unique values
SELECT COUNT(DISTINCT amount) FROM payment WHERE amount > 5.99;

-- query for smallest payment made over 7.99
SELECT MIN(amount) as min_num_payments FROM payment WHERE amount > 7.99;

SELECT amount FROM payment WHERE amount > 7.99 ORDER BY amount LIMIT 1;

-- SELECT the largest amount greater than 7.99
SELECT MAX(amount) as max_num_payments FROM payment WHERE amount > 7.99;

SELECT amount FROM payment WHERE amount > 7.99 ORDER BY amount DESC LIMIT 1;

-- query to display different COUNTS of amounts grouped together
SELECT amount, COUNT(amount) FROM payment GROUP BY amount ORDER BY amount;

-- query to display customer_ids with summed amounts for each customer_id
SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC;

-- grab all amounts by customer id
SELECT customer_id, amount FROM payment GROUP BY customer_id, amount ORDER BY customer_id;




-- district
--SELECT *
--FROM address


-- WEEK 5 - MONDAY QUESTIONS

-- 1.
SELECT COUNT(last_name) FROM actor WHERE last_name = 'Wahlberg'; 

-- 2.
SELECT COUNT(amount) FROM payment WHERE amount BETWEEN 3.99 AND 5.99;

-- 3.
SELECT COUNT(film_id) FROM inventory GROUP BY film_id ORDER BY COUNT(film_id) DESC;

-- 4.
SELECT COUNT(last_name) FROM customer WHERE last_name = 'William';

-- 5.
SELECT COUNT(staff_id) FROM rental GROUP BY staff_id;

-- 6.
SELECT COUNT(DISTINCT district) FROM address;

-- 7.
SELECT film_id, COUNT(actor_id) FROM film_actor GROUP BY film_id ORDER BY COUNT(actor_id) DESC LIMIT 1;

-- 8.
SELECT COUNT(last_name) FROM customer WHERE store_id = 1 AND last_name LIKE '%es' GROUP BY store_id;

-- 9.
SELECT COUNT(amount), amount FROM payment WHERE customer_id BETWEEN '380' AND '430' GROUP BY amount HAVING COUNT(amount) > 250;

-- 10.
SELECT rating, COUNT(rating) FROM film GROUP BY rating ORDER BY COUNT(rating) DESC;








