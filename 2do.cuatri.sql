--Crear un nuevo actor y agregarlo
insert into actor (first_name,last_name) values ('Michael','Jordan');

--Crear peliculas 
INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating)
VALUES ('el principito', 'un amor no prohibido', 2018, 1, 3, 4.99, 120, 19.99, 'PG-13');

--Buscar Michael jordan en la lista
SELECT actor_id
FROM actor
WHERE first_name like 'Michael' AND last_name = 'Jordan'

