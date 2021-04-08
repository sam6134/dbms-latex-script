SELECT S_NAME, D_NAME
FROM student
WHERE S_ID IN ( 
    SELECT S_ID 
    FROM takes 
    WHERE GRADE=4);$

SELECT S_NAME, D_NAME 
FROM student 
WHERE S_ID IN (
    SELECT S_ID 
    FROM takes
    WHERE GRADE=(
        SELECT MAX(GRADE) 
        FROM takes)
    );$

SELECT S_NAME, D_NAME 
FROM student 
WHERE S_ID IN (
    SELECT S_ID
    FROM takes
    WHERE GRADE=(
        SELECT MIN(GRADE) from takes
        )
    );$

SELECT INST_NAME, D_NAME
FROM instructor
WHERE D_NAME IN (
    SELECT D_NAME
    FROM department 
    WHERE BUILDING = "Taylor"
    );$

SELECT C_ID, TITLE, D_NAME 
FROM course 
WHERE D_NAME IN (
    SELECT D_NAME 
    FROM department 
    WHERE BUDGET > (
        SELECT AVG(BUDGET) 
        FROM department
        )
    );$

UPDATE takes 
SET GRADE = 10 
WHERE SEC_ID=1 AND SEM = "Fall" AND YEAR = 2009 AND S_ID IN (
    SELECT S_ID 
    FROM student 
    WHERE S_NAME = "Williams"
    );$

SELECT C_ID, SEC_ID, SEM, GRADE
FROM takes
WHERE S_ID IN (
    SELECT S_ID 
    FROM student 
    WHERE S_NAME = "Zhang"
    );$

SELECT MAX(BUDGET) as third_largest
FROM department
WHERE BUDGET < (
    SELECT MAX(BUDGET) AS second_largest
    FROM department 
    WHERE BUDGET < (
        SELECT MAX(BUDGET) 
        AS largest 
        FROM department) 
    ); $

SELECT INST_ID, C_ID, SEC_ID, SEM
FROM teaches
WHERE INST_ID IN (
    SELECT INST_ID 
    FROM instructor 
    WHERE SAL = 92000
    );$

SELECT MIN(SAL) AS third_smallest
FROM instructor
WHERE SAL > (
    SELECT MIN(SAL) AS  second_smallest 
    FROM instructor 
    WHERE SAL> (
        SELECT MIN(SAL) AS smallest 
        FROM instructor
        )
    );$
