Create Database Worker;
use worker;


Create table details
(
WORKER_ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
SALARY INT,
JOINING_DATE DATETIME,
DEPARTMENT VARCHAR(20)
);

SELECT * FROM DETAILS;
-- ALL Data insert (Simple Worker Details)

/* 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
Ascending and DEPARTMENT Descending. */ 

SELECT * FROM DETAILS
ORDER BY FIRST_NAME ASC , LAST_NAME DESC;

/* 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
from the Worker table. */

SELECT * FROM DETAILS
WHERE FIRST_NAME IN ('Satish','Vipul');

/*3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
contains six alphabets.*/

SELECT * FROM DETAILS 
WHERE FIRST_NAME LIKE '_____H'; 

/* 4. Write an SQL query to print details of the Workers whose SALARY lies between 2000 TO 2500 . */

SELECT * FROM DETAILS
WHERE SALARY 
BETWEEN 100000  AND  500000 ;

/* 5.  Write an SQL query to fetch duplicate records having matching data in some fields of a table */

/* 6. Write an SQL query to show the top 6 records of a table. */

SELECT * FROM DETAILS
LIMIT 6 ;

/* 7. Write an SQL query to fetch the departments that have less than five people in them. */

SELECT DEPARTMENT FROM DETAILS
GROUP BY DEPARTMENT 
HAVING COUNT(*) < 5 ;


/* 8. Write an SQL query to show all departments along with the number of people in there. */


SELECT DEPARTMENT,COUNT(*) AS TOTALWORKERS
FROM DETAILS
GROUP BY DEPARTMENT
HAVING  COUNT(*) < 5;

/* 9. Write an SQL query to print the name of employees having the highest salary in each
department. */

SELECT * FROM DETAILS;

SELECT DEPARTMENT , CONCAT(FIRST_NAME,' ',LAST_NAME) AS EMPLOYENAME , SALARY
FROM DETAILS
WHERE (DEPARTMENT, SALARY) IN ( 
  SELECT DEPARTMENT,MAX(SALARY)
  FROM DETAILS
  GROUP BY DEPARTMENT
);









