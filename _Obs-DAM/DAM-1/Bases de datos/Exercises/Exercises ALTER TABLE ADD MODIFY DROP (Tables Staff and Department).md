```sql
-- 1. - Erase the constraints that exist in the attribute salary.  
-- We add it first  
ALTER TABLE STAFF  
    ADD CONSTRAINT chk_precio CHECK (SALARY >= 3000 AND SALARY <= 11000);  
  
alter table STAFF  
drop constraint chk_precio;  
-- 2 Erase the primary key constraint of the table Staff and create a new primary key with the columns: name and  
-- cod_dept.  
-- First, we remove the foreign keys that point to it  
alter table STAFF  
drop constraint FK_DEPARTMENT_CODE;  
alter table STAFF  
    drop constraint FK_SUPERIOR_OFFICER;  
-- Now we can remove the primary key  
alter table STAFF  
drop primary key ;  
-- We create the new primary key  
alter table STAFF  
add primary key (NAME,DEPARTMENT_CODE);  
  
-- 3 Execute the statements:  
ALTER TABLE DEPARTMENT  
    DROP PRIMARY KEY CASCADE;  
UPDATE staff  
SET DEPARTMENT_CODE = '22 '  
WHERE name = 'Cerda';  
-- In the execution of these statements is there any mistake? Why? If we only executed the UPDATE statement (without  
-- the previous ALTER) had gone a bug?
```
There is no error because when we cascade-delete the primary key, we also delete the foreign keys that reference it. If we hadn't done that, the update would have failed because apartment 22 was not defined as a primary key.

```sql
-- 4  Insert again the primary key constraint on the table department. Also, you have to add a constraint to salary column  
-- in such a way that the salary can only take values between 2000 and 11000.  
ALTER TABLE DEPARTMENT  
ADD PRIMARY KEY(DEPARTMENT_CODE);  
  
ALTER TABLE STAFF  
    ADD CONSTRAINT chk_precio CHECK (SALARY >= 2000 AND SALARY <= 11000);  
  
-- 5. Run the following statements:  
ALTER TABLE Staff  
    ADD CONSTRAINT foreign_key  
        FOREIGN KEY (DEPARTMENT_CODE) REFERENCES DEPARTMENT (DEPARTMENT_CODE) ON DELETE CASCADE ENABLE NOVALIDATE;  
DELETE FROM DEPARTMENT  
WHERE DEPARTMENT_CODE = '05 ';  
-- Explain what the effect of these statements.
```
The first statement didn't work as described in the prompt; I had to add “ENABLE NOVALIDATE.” What the first statement does is modify the staff table by adding a foreign key. The last part of the command ensures that if someone deletes a department from the DEPARTMENT table, the system will automatically remove all employees from the staff table who belonged to that department.

The second statement deletes department 05 and also the employees who are in it.

```sql
-- 6 Add the column comments to the table departments. The field should be VARCHAR2 type and length 80.  
ALTER TABLE DEPARTMENT  
ADD (COMMENTS VARCHAR2(80));  
  
-- 7. - Add to the programming department the following comment: Programming with Java and SQL  
UPDATE DEPARTMENT  
SET COMMENTS = 'Programming with Java and SQL'  
WHERE DEPARTMENT_CODE = 8;  
  
-- 8. - Modify the new attribute of the department table so as to have a length up to 50 characters.  
ALTER TABLE DEPARTMENT  
MODIFY (COMMENTS VARCHAR2(50));  
  
-- 9. - Run the sql file called utlexcpt.sql that you can find in c:\oracle\RDBMS\admin. After, execute the following  
-- commands:  
create table exceptions(row_id rowid,  
                        owner varchar2(30),  
                        table_name varchar2(30),  
                        constraint varchar2(30));  
INSERT INTO STAFF VALUES (126, 'Vidal', 'Programmer', 4500, 88, NULL, 413);  
  
alter table STAFF disable constraint fk_superior_officer;  
alter table STAFF disable constraint fk_department_code;  
  
INSERT INTO STAFF VALUES (126, 'Vidal', 'Programmer', 4500, 88, NULL, 413);  
  
  
ALTER TABLE STAFF ENABLE CONSTRAINT FK_SUPERIOR_OFFICER EXCEPTIONS INTO EXCEPTIONS;  
ALTER TABLE STAFF ENABLE CONSTRAINT FK_DEPARTMENT_CODE EXCEPTIONS INTO EXCEPTIONS;  
  
SELECT * FROM EXCEPTIONS;  
SELECT s.EMPLOYEE_CODE, s.NAME, s.DEPARTMENT_CODE, e.CONSTRAINT  
FROM STAFF s, EXCEPTIONS e  
WHERE s.rowid = e.row_id;  
  
INSERT INTO DEPARTMENT VALUES (88, 'Ibiza', 'programming-2', NULL);  
  
ALTER TABLE STAFF ENABLE CONSTRAINT FK_DEPARTMENT_CODE EXCEPTIONS INTO EXCEPTIONS;
```

### 1. The first attempt at insertion

> `INSERT INTO staff VALUES ('0126', 'Vidal', 'Programmer', 4500, '88', null, '0413 ');`

- **Function:** Try adding a new employee (Vidal) assigned to department '88'.
    
- **Expected result:** This should result in an error. As there is a foreign key linking employees to departments (created in Exercise 5), the database will not allow you to insert Vidal if department '88' does not yet exist in the `dept` table
    

### 2. Force the entry of inconsistent data

> `ALTER TABLE DISABLE CONSTRAINT foreign_key staff;` 

- **Function:** First, you temporarily disable the foreign key constraint. With it disabled, the database turns a blind eye and allows you to execute the second command to insert Vidal into flat '88', even though the flat does not exist.
    

### 3. Handling exceptions

> `ALTER TABLE ENABLE CONSTRAINT foreign key staff EXCEPTIONS INTO exceptions;`

- **Function:** Attempts to restart the rule. As you inserted Vidal in the previous step, the rule will fail. However, the magic of the `EXCEPTIONS INTO exceptions` clause is that it catches this error and sends the technical details of Vidal’s row to the `exceptions` table, rather than simply cancelling the operation without providing any further clues.
    

### 4. Investigate the errors

> `SELECT * FROM exceptions;` `SELECT * FROM staff, exceptions WHERE staff.rowid = exceptions.row_id AND exceptions.table_name = 'STAFF' AND exceptions.constraint = 'foreign_key';`

- **Function:** The first query shows you the raw contents of the error table (you’ll see incomprehensible ROWID identifiers). The second query is very useful: it joins the error table with your actual `staff` table using the ROWID. This allows you to see exactly which employee (Vidal) and which data are violating the `foreign_key` constraint in the `STAFF` table.
    

### 5. Fix the problem and reactivate

> `INSERT INTO dept VALUES ('88',' programming-2',' Ibiza ', NULL);` `ALTER TABLE Staff ENABLE CONSTRAINT clau_foranea EXCEPTIONS INTO exceptions;` 

- **Procedure:** First, resolve the inconsistency by inserting the missing department '88'. As the 'parent' record already exists, the 'child' record (Vidal) is now valid. Finally, try to enforce the constraint again. This time it will succeed and nothing will be sent to the exception table.