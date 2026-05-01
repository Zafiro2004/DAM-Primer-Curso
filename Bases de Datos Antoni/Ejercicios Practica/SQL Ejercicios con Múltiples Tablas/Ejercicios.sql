-- 1
select *
from departments;

-- 2
select JOB_TITLE,MIN_SALARY from jobs;

-- 3
select *
from locations where POSTAL_CODE is not null ;

-- 4
select COUNTRY_NAME from countries where REGION_ID=2;

-- 5
select * from departments order by DEPARTMENT_NAME desc;

-- 6
select *
from jobs order by MAX_SALARY desc limit 5;

-- 7
select * from countries where COUNTRY_NAME like 'C%';

-- 8
select * from job_history where year(START_DATE) >1995;

-- 9
select *
from regions order by REGION_NAME;

-- 10
select *
from locations where CITY='Tokyo';

-- 11
select *
from departments where LOCATION_ID in(1700,1800);

-- 12
select *
from jobs where MIN_SALARY not between 4000 and 8000;

-- 13
select count(*)
from departments;

-- 14
select max(MAX_SALARY) as "Salario Máximo mas grande",
       min(MIN_SALARY) as "Salrio Mínimo mas pequeño",
       sum(MIN_SALARY)as "Suma de Salarios Mínimos" from jobs;

-- 15
select *
from locations where CITY like '______';

-- 16
select *
from jobs where JOB_ID like '%rep' or '%man';

-- 17
select (MAX_SALARY-MIN_SALARY),JOB_TITLE as "Rango Salarial"
from jobs;

-- 18
select year(END_DATE) from job_history;

-- 19
select CITY from locations where CITY like '%i%i%';

-- 20
select * from regions order by length(REGION_NAME);

-- 21
select count(*),LOCATION_ID
from departments group by LOCATION_ID;

-- 22
select LOCATION_ID
from departments group by LOCATION_ID
having count(*)>2;

-- 23
select distinct count(CITY) from locations group by COUNTRY_ID;

-- 24
SELECT region_id, COUNT(*) as num_paises
FROM countries
GROUP BY region_id
HAVING COUNT(*) < 5;

-- 25
select count(CITY),COUNTRY_ID from locations group by COUNTRY_ID;

-- 26
select COUNTRY_ID
from locations group by COUNTRY_ID having count(LOCATION_ID)=1;

-- 27
select count(*),JOB_ID from job_history group by JOB_ID;

-- 28
select JOB_ID from job_history group by JOB_ID having count(*)>=1;

-- 29
SELECT min_salary, COUNT(*) as cantidad_puestos
FROM jobs
GROUP BY min_salary;

-- 30
SELECT department_id, COUNT(*) as cantidad_rotaciones
FROM job_history
GROUP BY department_id;

-- 31
select c.COUNTRY_NAME,r.REGION_NAME
from countries c left join regions r on c.REGION_ID=r.REGION_ID;

-- 32
select STREET_ADDRESS,CITY,COUNTRY_NAME
from locations l  left join countries c on l.COUNTRY_ID=c.COUNTRY_ID;

-- 33
select DEPARTMENT_NAME,CITY
from departments left join locations
on departments.LOCATION_ID=locations.LOCATION_ID;

-- 34
select EMPLOYEE_ID,JOB_TITLE
from job_history left join jobs
on job_history.JOB_ID=jobs.JOB_ID;

-- 35
select COUNTRY_NAME,REGION_NAME
from countries left join regions
on countries.REGION_ID=regions.REGION_ID;

-- 36
select count(DEPARTMENT_NAME),locations.LOCATION_ID
from locations left join departments
on locations.LOCATION_ID=departments.LOCATION_ID
group by locations.LOCATION_ID;

-- 37
select DEPARTMENT_NAME,CITY,COUNTRY_NAME,REGION_NAME
from departments join locations
on departments.LOCATION_ID=locations.LOCATION_ID
left join countries on locations.COUNTRY_ID=countries.COUNTRY_ID
left join regions on countries.REGION_ID=regions.REGION_ID;

-- 38
SELECT *
FROM departments;

-- 39
select COUNTRY_NAME,CITY
from countries left join locations
on countries.COUNTRY_ID=locations.COUNTRY_ID;

-- 40
SELECT d.department_name, e.first_name
FROM departments d
JOIN employees e ON d.manager_id = e.employee_id;

-- 41
select COUNTRY_NAME from countries where REGION_ID =
(select REGION_ID from countries where COUNTRY_NAME='Argentina');

-- 42
select LOCATION_ID,CITY from locations where LOCATION_ID not in
(select LOCATION_ID from departments where LOCATION_ID is not null);

-- 43
select JOB_TITLE from jobs where MIN_SALARY >
(select max(e.SALARY) from employees e where e.DEPARTMENT_ID=50);

-- 44
SELECT city
FROM locations
WHERE location_id IN (
    SELECT location_id
    FROM departments
    GROUP BY location_id
    HAVING COUNT(*) = (
        SELECT MAX(dept_count)
        FROM (
                 SELECT COUNT(*) as dept_count
                 FROM departments
                 GROUP BY location_id
             ) as subquery
    )
);
-- 45
select * from departments where LOCATION_ID
in(select LOCATION_ID from locations where COUNTRY_ID =
(select COUNTRY_ID from countries where COUNTRY_NAME='United States of America' ));

-- 46
select JOB_TITLE from jobs where JOB_ID not in
(select JOB_ID from job_history);

-- 47
select distinct DEPARTMENT_NAME
from departments
where DEPARTMENT_ID in(
    select DEPARTMENT_ID
    from job_history
    );
-- 48
select employee_id
from job_history
group by employee_id
having count(*)>1;

-- 49
select count(*),COUNTRY_ID
from locations
group by COUNTRY_ID
order by count(*) desc
limit 1;
-- 50 Muestra la ubicación (ciudad y país) del departamento con más empleados en toda la empresa.
SELECT d.department_name, l.city, c.country_name, COUNT(e.employee_id) as total_empleados
FROM employees e
         JOIN departments d ON e.department_id = d.department_id
         JOIN locations l ON d.location_id = l.location_id
         JOIN countries c ON l.country_id = c.country_id
GROUP BY d.department_name, l.city, c.country_name
ORDER BY total_empleados DESC
LIMIT 1;