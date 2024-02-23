1-
SELECT title
FROM film 
ORDER BY title;
2-
SELECT DISTINCT rating 
FROM film 
ORDER BY rating
3-
SELECT title, rental_rate 
FROM film 
WHERE rating LIKE "PG" or rating = "PG-13"
4-
SELECT city, country 
FROM city ci JOIN country co ON ci.country_id = co.country_id
ORDER BY country,city;
5-
SELECT country, COUNT(city) AS ciudades
FROM city ci JOIN country co ON ci.country_id = co.country_id
GROUP BY co.country_id
ORDER BY ciudades DESC;
6-
SELECT country as pais, count(city) as ciudades 
FROM city ci JOIN country co ON ci.country_id = co.country_id
GROUP BY co.country_id HAVING ciudades > 1
7-
SELECT min(rental_date) as fecha_menor, max(rental_date) as fecha_maximo 
FROM rental 
WHERE return_date IS NOT NULL;
8-
SELECT title as peliculas, count(actor_id) as actores 
FROM film f JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY f.film_id
ORDER BY actor_iD ASC LIMIT 10;
9-
SELECT p.title as pelicula, count(*) as alquileres
FROM film p JOIN inventory i ON p.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY p.film_id
ORDER BY alquileres DESC LIMIT 1 OFFSET 2;

PRUEBA 2

1-
SELECT department_name
FROM departments
ORDER BY department_name ASC;
2-
SELECT DISTINCT salary 
FROM employees
ORDER BY salary DESC;
3-