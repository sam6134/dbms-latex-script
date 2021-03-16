SELECT * 
FROM instructor 
WHERE SAL = (
    SELECT MAX(SAL) 
    FROM instructor 
    WHERE SAL < ( 
        SELECT MAX(SAL) FROM instructor 
        ) 
    );$

SELECT AVG(SAL) AS Average_Salary
FROM instructor;$

SELECT COUNT( INST_ID ) AS count_instructor 
FROM instructor 
WHERE SAL < (SELECT AVG(SAL) FROM instructor);$

SELECT COUNT(S_ID) AS count_students
FROM student
WHERE D_NAME = 'Comp. Sci.';$

SELECT COUNT( DISTINCT D_NAME ) AS distinct_departments
FROM student;$

UPDATE department
SET BUDGET = 1.1*BUDGET
WHERE BUDGET < (SELECT AVG(BUDGET) FROM department);$

SELECT SUM(BUDGET)
FROM department;$

SELECT AVG(LENGTH(S_NAME)) AS avg_length 
FROM student;$

SELECT MIN(SAL) as min_salary
FROM instructor;$

 SELECT MIN(SAL) as third_min 
 FROM instructor WHERE SAL >  (
     SELECT MIN(SAL) as second_min 
     FROM instructor WHERE SAL > (
         SELECT MIN(SAL) AS min_sal 
         FROM instructor
        )
    );$