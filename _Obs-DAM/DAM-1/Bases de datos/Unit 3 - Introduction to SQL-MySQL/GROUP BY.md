Aggregates rows into groups based on shared values, enabling the use of aggregate functions and summarization of data.

```mysql
SELECT department, COUNT(*) FROM employees 
GROUP BY department;
```