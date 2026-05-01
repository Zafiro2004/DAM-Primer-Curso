Combines the results of multiple queries into a single result set, removing duplicates by default. All combined queries must have compatible structures.

```mysql
SELECT name FROM employees
UNION
SELECT name FROM managers;
```