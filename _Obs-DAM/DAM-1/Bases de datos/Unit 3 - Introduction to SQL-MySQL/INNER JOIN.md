Returns only rows where matching values exist in both joined datasets.

```mysql
SELECT * FROM employees
INNER JOIN departments ON employees.dept_id = departments.id;
```