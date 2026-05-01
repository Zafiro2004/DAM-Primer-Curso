Joins a dataset to itself to model hierarchical or relational comparisons within the same structure.

```mysql
SELECT e1.name, e2.name
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.id;
```