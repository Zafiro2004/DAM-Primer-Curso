```sql
-- 21 List the colleges with fewer than 5 applications. Show only the college name and  
-- sort the results by name. Do the exercise with a simple query.  
  
SELECT COLLAGE FROM APPLIES  
GROUP BY COLLAGE  
HAVING count(COLLAGE) < 5  
ORDER BY COLLAGE;  
  
SELECT COLLAGE FROM APPLIES  
GROUP BY COLLAGE  
HAVING count(distinct SID) < 5  
ORDER BY COLLAGE;  
  
-- 22 List colleges with fewer than 5 applications. Show only the college name and sort  
-- the results by name. Do the exercise using a subquery.  
SELECT NAME FROM COLLEGES  
WHERE (SELECT COUNT(*) FROM APPLIES WHERE APPLIES.COLLAGE = COLLEGES.NAME) < 5  
ORDER BY NAME;  
  
SELECT NAME FROM COLLEGES  
WHERE (SELECT COUNT(DISTINCT SID) FROM APPLIES WHERE APPLIES.COLLAGE = COLLEGES.NAME) < 5  
ORDER BY NAME;  
  
-- 23 List the majors whose applicant's maximum mark is below the average.  
SELECT a.MAJOR  
FROM APPLIES a JOIN STUDENTS s ON a.SID = s.ID  
GROUP BY a.MAJOR  
HAVING MAX(s.MARK) < (SELECT AVG(MARK) FROM STUDENTS);  
  
-- 24 List IDs, names, and surnames of students applying to CS. Sort the results by  
-- student surname, student name and student id.  
SELECT DISTINCT s.ID, s.NAME, s.SURNAME  
FROM STUDENTS s JOIN APPLIES a ON s.ID = a.SID  
WHERE a.MAJOR = 'CS'  
ORDER BY s.SURNAME, s.NAME, s.ID;  
  
-- 25 List the students who applied to CS but not EE. Sort the results by student surname,  
-- student name and student id.  
SELECT DISTINCT s.ID,s.NAME,s.SURNAME  
FROM STUDENTS s JOIN APPLIES a ON s.ID=a.SID  
WHERE a.MAJOR = 'CS'  
AND s.ID NOT IN (SELECT SID FROM APPLIES WHERE MAJOR = 'EE')  
ORDER BY s.SURNAME,s.NAME,s.ID;  
  
-- 26 List the colleges such that some other college is in the same state. Sort the results  
-- by state and college. It’s mandatory to use EXISTS.  
SELECT c1.NAME  
FROM COLLEGES c1  
WHERE EXISTS (  
    SELECT 1 FROM COLLEGES c2  
    WHERE c2.STATE = c1.STATE AND c2.NAME != c1.NAME  
)  
ORDER BY c1.STATE, c1.NAME;  
  
-- 27 List the name of the biggest college.  
SELECT NAME FROM COLLEGES  
WHERE ENROLLMENT = (SELECT MAX(ENROLLMENT) FROM COLLEGES);  
  
-- 28 List the student (or students) with highest mark (using EXISTS).  
SELECT ID, NAME, SURNAME FROM STUDENTS s1  
WHERE NOT EXISTS (  
    SELECT 1 FROM STUDENTS s2 WHERE s2.MARK > s1.MARK  
);  
  
-- 29 List the student with highest mark (using "where mark >= all")  
SELECT ID, NAME, SURNAME FROM STUDENTS  
WHERE MARK >= ALL (SELECT MARK FROM STUDENTS);  
  
-- 30 List the name of the college with the higher enrolment than all other colleges (using  
-- 'where enrolment > all').  
SELECT NAME FROM COLLEGES c1  
WHERE ENROLLMENT > ALL (  
    SELECT ENROLLMENT FROM COLLEGES c2 WHERE c2.NAME != c1.NAME  
);  
  
-- 31 List the name of the college with the higher enrolment than all other colleges (using  
-- 'not enrolment <= Any')  
SELECT NAME FROM COLLEGES c1  
WHERE NOT ENROLLMENT <= ANY (  
    SELECT ENROLLMENT FROM COLLEGES c2 WHERE c2.NAME != c1.NAME  
);  
  
-- 32 List the students not from the smallest high school.  
SELECT ID, NAME, SURNAME FROM STUDENTS  
WHERE SIZE_HIGH_SCHOOL > (SELECT MIN(SIZE_HIGH_SCHOOL) FROM STUDENTS);  
  
-- 33 List the application information order by student surname and name.  
SELECT s.SURNAME, s.NAME, a.COLLAGE, a.MAJOR, a.DECISION  
FROM STUDENTS s JOIN APPLIES a ON s.ID = a.SID  
ORDER BY s.SURNAME, s.NAME;  
  
-- 34 List the pairs of students with same mark (ordered by its marks descending and  
-- surnames/names ascending).  
SELECT concat(s1.NAME, s1.SURNAME), concat(s2.NAME, s2.SURNAME), s1.MARK  
FROM STUDENTS s1 JOIN STUDENTS s2  
                      ON s1.MARK = s2.MARK AND s1.ID < s2.ID  
ORDER BY s1.MARK DESC, s1.SURNAME ASC, s1.NAME ASC, s2.SURNAME ASC, s2.NAME ASC;  
  
-- 35 List a list of college names and student names together ordered by name.  
SELECT NAME FROM COLLEGES  
UNION  
SELECT NAME FROM STUDENTS  
ORDER BY NAME;  
  
-- 36 List IDs of students who applied to both CS and EE.  
SELECT DISTINCT SID  
FROM APPLIES  
WHERE MAJOR = 'CS'  
  AND SID IN (  
    SELECT SID  
    FROM APPLIES  
    WHERE MAJOR = 'EE'  
);  
  
-- 37 List IDs of students who applied to CS but not EE.  
SELECT DISTINCT SID  
FROM APPLIES  
WHERE MAJOR = 'CS'  
  AND SID NOT IN (  
    SELECT SID  
    FROM APPLIES  
    WHERE MAJOR = 'EE'  
);  
  
-- 38 List the students that don’t belong to the smallest high school (use exists).  
SELECT ID, NAME, SURNAME FROM STUDENTS s1  
WHERE EXISTS (  
    SELECT 1 FROM STUDENTS s2 WHERE s2.SIZE_HIGH_SCHOOL < s1.SIZE_HIGH_SCHOOL  
);  
  
-- 39 List id of the students who applied to CS but not EE (use ‘any’ and two subqueries).  
SELECT DISTINCT SID FROM APPLIES  
WHERE MAJOR = 'CS'  
  AND NOT SID = ANY(SELECT SID FROM APPLIES WHERE MAJOR = 'EE');
```