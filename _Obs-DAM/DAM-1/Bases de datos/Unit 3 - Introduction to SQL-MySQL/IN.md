Tests whether a value matches any value in a specified list or subquery, providing a concise alternative to multiple OR conditions.

```mysql
SELECT * FROM employees 
WHERE department IN ('HR', 'IT');
```