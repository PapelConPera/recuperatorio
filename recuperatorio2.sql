1-
SELECT department_name as nombre_departamento
FROM departments
ORDER BY nombre_departamento ASC;
2-
SELECT DISTINCT salary as salario
FROM employees
ORDER BY salario DESC;
3-
SELECT job_title as puesto_laborales, max_salary as salario_maximo, min_salary as salario_minimo
FROM jobs jo JOIN employees em ON jo.job_id = em.job_id
ORDER BY min_salary DESC, max_salary DESC;
4-
SELECT country_name as paises, region_name as regiones 
FROM countries co JOIN regions re ON co.region_id = re.region_id
ORDER BY regiones, paises;
5-
SELECT first_name as Nombre, last_name as Apellido, salary as salario, department_name as Depatamento
FROM employees em JOIN departments de ON em.department_id = de.department_id
WHERE salary  
6-