# Unit 3: Introduction to SQL-MySQL

## **3.1. Data Definition Language (DDL)**
A set of statements used to define, modify, and remove the logical structure of a database. It operates on the schema (objects and metadata) and determines how data is organized and stored, rather than manipulating the data itself.

### [[CREATE DATABASE]]
Creates a new database.
```sql
CREATE DATABASE company_db;
```

### [[ALTER DATABASE]]
Modifies database-level properties.
```sql
ALTER DATABASE company_db SET READ_ONLY = OFF;
```

### [[CREATE TABLE]]
Defines a new table structure.
```sql
CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);
```

### [[ALTER TABLE]]
Modifies an existing table structure.
```sql
ALTER TABLE employees ADD salary DECIMAL(10,2);
```

### [[DROP TABLE]]
Removes a table permanently.
```sql
DROP TABLE employees;
```

### [[CREATE INDEX]]
Creates an index to optimize query performance.
```sql
CREATE INDEX idx_name ON employees(name);
```

### [[DROP INDEX]]
Removes an existing index.
```sql
SELECT * FROM employees
INNER JOIN departments ON employees.dept_id = departments.id;
```

## **3.2. Data Manipulation Language (DML)**
A set of statements used to manage the data contained within a database. It allows inserting, modifying, and deleting existing data inside previously defined structures.

### [[INSERT INTO]]

```sql
INSERT INTO employees (id, name) VALUES (1, 'Alice');
```
### [[UPDATE]]
Modifies existing records.
```sql
UPDATE employees SET name = 'Bob' WHERE id = 1;
```
  
### [[DELETE]]
Removes records.
```sql
DELETE FROM employees WHERE id = 1;
```

## **3.3. Data Query Language (DQL)**
A set of statements focused on data retrieval. It is used to query data, apply filters, sort, group, and present results without modifying the stored data.

### [[SELECT]]
Retrieves data.
```sql
SELECT * FROM employees;
```

### [[SELECT DISTINCT]]
Retrieves unique values.
```sql
SELECT DISTINCT name FROM employees;
```

### [[WHERE]]
Filters records based on conditions.
```sql
SELECT * FROM employees 
WHERE salary > 3000;
```

### [[ORDER BY]]
Sorts results.
```sql
SELECT * FROM employees 
ORDER BY name;
```

### [[LIMIT]]
Restricts the number of returned records.
```sql
SELECT * FROM employees 
LIMIT 5;
```

### [[GROUP BY]]
Groups records for aggregation.
```sql
SELECT department, COUNT(*) FROM employees 
GROUP BY department;
```

### [[HAVING]]
Filters grouped results.
```sql
SELECT department, COUNT(*) FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
```

### [[UNION]]
Combines results from multiple queries.
```sql
SELECT name FROM employees
UNION
SELECT name FROM managers;
```


## **3.4. Operators and conditions**
A collection of logical, relational, and comparison operators used to build conditional expressions. They define selection, combination, and exclusion criteria within queries.

### [[AND]]
Combines conditions that must all be true.
```sql
SELECT * FROM employees 
WHERE salary > 2000 
AND department = 'IT';
```

### [[OR]]
Combines conditions where at least one must be true.
```sql
SELECT * FROM employees 
WHERE department = 'HR' OR department = 'IT';
```

### [[NOT]]
Negates a condition.
```sql
SELECT * FROM employees 
WHERE NOT department = 'HR';
```

### [[IN]]
Checks if a value exists within a set.
```sql
SELECT * FROM employees 
WHERE department IN ('HR', 'IT');
```

### [[BETWEEN]]
Checks if a value falls within a range.
```sql
SELECT * FROM employees 
WHERE salary BETWEEN 2000 AND 4000;
```

### [[LIKE]]
Matches patterns in text.
```sql
SELECT * FROM employees 
WHERE name LIKE 'A%';
```


## **3.5. Aggregate functions**
Functions designed to perform calculations over sets of data. They operate on multiple records to produce a single summarized result, typically in the context of grouped data.

### [[COUNT()]]
Counts records.
```sql
SELECT COUNT(*) FROM employees;
```

### [[AVG()]]
Calculates the average.
```sql
SELECT AVG(salary) FROM employees;
```

### [[SUM()]]
Calculates the total.
```sql
SELECT SUM(salary) FROM employees;
```

### [[MIN()]]
Returns the smallest value.
```sql
SELECT MIN(salary) FROM employees;
```

### [[MAX()]]
Returns the largest value.
```sql
SELECT MAX(salary) FROM employees;
```


## **3.6. Aliases and string functions**
Mechanisms aimed at improving readability and result manipulation. Aliases provide temporary names for expressions or results, while string functions transform and combine textual values.

### [[AS]]
Assigns a temporary name to a column or expression.
```sql
SELECT name AS employee_name FROM employees;
```

### [[CONCAT()]]
Combines multiple text values into one.
```sql
SELECT CONCAT(first_name, ' ', last_name) FROM employees;
```


## **3.7. Joins**
A set of operations used to combine data from multiple related sources. They define how records from different datasets are matched to produce a unified result.

### [[INNER JOIN]]
Returns only matching records.
```sql
SELECT * FROM employees
INNER JOIN departments ON employees.dept_id = departments.id;
```

### [[LEFT (OUTER) JOIN]]
Returns all records from the left source and matching ones from the right.
```sql
SELECT * FROM employees
LEFT JOIN departments ON employees.dept_id = departments.id;
```

### [[RIGHT (OUTER) JOIN]]
Returns all records from the right source and matching ones from the left.
```sql
SELECT * FROM employees
RIGHT JOIN departments ON employees.dept_id = departments.id;
```

### [[CROSS (FULL) JOIN]]
Returns all possible combinations.
```sql
SELECT * FROM employees
CROSS JOIN departments;
```

### [[SELF JOIN]]
Joins a data source with itself.
```sql
SELECT e1.name, e2.name
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.id;
```