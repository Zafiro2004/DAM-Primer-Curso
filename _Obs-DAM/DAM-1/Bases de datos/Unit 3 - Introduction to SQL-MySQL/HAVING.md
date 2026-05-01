Filters grouped results after aggregation. Unlike WHERE, it operates on groups rather than individual rows.

```mysql
SELECT department, COUNT(*) FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
```