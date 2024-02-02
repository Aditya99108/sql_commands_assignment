-- Assignment SQL Commands

use mavenmovies;

-- 1. Identify the primary keys and foreign keys in maven movies db. Discuss the differences 
-- A primary key is a unique identifier for each record in a table. A foreign key establishes a relationship between tables by referencing the primary key of another table. 
SELECT * FROM information_schema.key_column_usage;


-- 2. List all details of actors --
SELECT * FROM actor;


-- 3. List all customer information from DB. --
SELECT * FROM customer;


-- 4. List different countries. --
SELECT distinct country FROM country;


-- 5. Display all active customers. --
SELECT * FROM customer where active = 1;


-- 6. List of all rental IDs for customer with ID 1.
SELECT rental_id FROM rental where customer_id = 1;


-- 7. Display all the films whose rental duration is greater than 5 .
SELECT title, rental_duration FROM film where rental_duration > 5;


-- 8. List the total number of films whose replacement cost is greater than $15 and less than $20.
SELECT * FROM film where replacement_cost > 15 and replacement_cost < 20;


-- 9. Display the count of unique first names of actors.
SELECT count(distinct first_name) FROM actor;


-- 10. Display the first 10 records from the customer table.
SELECT * FROM customer limit 10;


-- 11. Display the first 3 records from the customer table whose first name starts with ‘b’.
SELECT first_name FROM  customer where first_name like "b%" limit 3; 


-- 12. Display the names of the first 5 movies which are rated as ‘G’.
SELECT title FROM film where rating = "G" limit 5;


-- 13. Find all customers whose first name starts with "a".
SELECT first_name FROM mavenmovies.customer where first_name like "a%";


-- 14. Find all customers whose first name ends with "a".
SELECT first_name FROM mavenmovies.customer where first_name like "%a";


-- 15.Display the list of first 4 cities which start and end with ‘a’ .
SELECT city FROM city where city like "a%a" limit 4;


-- 16.Find all customers whose first name have "NI" in any position.
SELECT first_name FROM customer where first_name like "%NI%";


-- 17.Find all customers whose first name have "r" in the second position .
SELECT first_name FROM customer where first_name like "_r%";


-- 18.Find all customers whose first name starts with "a" and are at least 5 characters in length.
SELECT first_name FROM customer where first_name like "a____%";


-- 19.Find all customers whose first name starts with "a" and ends with "o".
SELECT * FROM customer where first_name like "a%o";


-- 20.Get the films with pg and pg-13 rating using IN operator.
SELECT title, rating FROM film where rating IN ("PG", "PG-13");


-- 21.Get the films with length between 50 to 100 using between operator.
SELECT Title, length FROM film where length between 50 and 100;


-- 22.Get the top 50 actors using limit operator.
SELECT * FROM actor LIMIT 50;


-- 23.Get the distinct film ids from inventory table.
SELECT distinct film_id FROM inventory;

