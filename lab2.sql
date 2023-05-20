use sakila;
-- Select all the actors with the first name ‘Scarlett’. 
select * from actor
where first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name = 'Johansson';

-- How many films (movies) are available for rent?
select count(inventory_id) from inventory;
-- 4581 total movies for rent

-- How many films have been rented?
select count(rental_id) from rental;
-- 16044 films have been rented

-- What is the shortest and longest rental period?
select max(rental_duration) from film;
select min(rental_duration) from film;
-- Max was 7 min was 3

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) from film;
select max(length) from film;
-- min 46 max 185 mins

-- What's the average movie duration?
select avg(length) from film;
-- avg 115.mins

-- What's the average movie duration expressed in format (hours, minutes)?
-- by hours

select concat(floor(length/60),'h',length%60) from film;

-- How many movies longer than 3 hours?
select count(*) from film
where (length/60) > 3;
-- 39 movies are longer than 3 hours

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select * from customer;
select concat(first_name,' ',last_name,' - ',lower(email)) as Formatted from customer;

-- What's the length of the longest film title?
select max(length(title)) from film_text;
-- string of 27 letters