Returns all rows from the right dataset and matching rows from the left, filling with nulls when no match exists.

```mysql
SELECT * FROM employees
RIGHT JOIN departments ON employees.dept_id = departments.id;
```