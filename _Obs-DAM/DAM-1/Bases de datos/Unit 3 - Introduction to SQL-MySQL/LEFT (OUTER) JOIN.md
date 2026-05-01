Returns all rows from the left dataset and matching rows from the right, filling with nulls when no match exists.

```mysql
SELECT * FROM employees
LEFT JOIN departments ON employees.dept_id = departments.id;
```