--Crear un nuevo actor y agregarlo
insert into actor (first_name,last_name) values ('Michael','Jordan');

--Crear peliculas 
INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating)
VALUES ('el principito', 'un amor no prohibido', 2018, 1, 3, 4.99, 120, 19.99, 'PG-13');

--Buscar Michael jordan en la lista
SELECT actor_id
FROM actor
WHERE first_name like 'Michael' AND last_name = 'Jordan'

--Mostrar toda la lista de todos los actores de michael jordan
SELECT a.first_name,a.last_name FROM actor a 
JOIN film f ON a.actor_id
WHERE first_name like 'Michael' AND last_name like 'jordan'
;

--crear los id de las peliculas y actor que creee
insert into actor (actor_id,film_id) values ('201','1001');

--mostrar el unico nombre en la lista con distintas peliculas 
SELECT a.actor_id, a.first_name, a.last_name, f.title AS film_title
FROM actor a JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE a.actor_id = 1 LIMIT 3; 
