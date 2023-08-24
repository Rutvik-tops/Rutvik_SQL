USE HR;

/* SQL 4 , 7 PAGE */

/* 1. Display all information in the tables EMP and DEPT.*/

SELECT * FROM DEPT ;

SELECT * FROM EMP ;

/* 2. Display only the hire date and employee name for each employee.*/

SELECT HIRE_DATE , ENAME FROM EMP;

/* 3. Display the ename concatenated with the job ID, separated by a comma and space, and 
name the column Employee and Title */

SELECT CONCAT(ENAME, ' ' ,JOB_ID) FROM EMP ;

/* 4. Display the hire date, name and department number for all clerks. */

SELECT  HIRE_DATE , ENAME , DEPT_NO
FROM EMP
WHERE DEPT = "CLERK";

/* 5. Create a query to display all the data from the EMP table. Separate each column by a 
comma. Name the column THE OUTPUT */

SELECT JOB_ID, ',' ,ENAME, ',' , ELNAME, ',' , HIRE_DATE, ',' , DEPT_NO, ',' , SALARY, ',' , DEPT, ',' , COMMISSION 
FROM EMP;

/* 6. Display the names and salaries of all employees with a salary greater than 2000. */

SELECT ENAME , SALARY FROM EMP
WHERE SALARY > 2000;

/* 7. Display the names and dates of employees with the column headers "Name" and "Start 
Date"*/

SELECT ENAME AS Name , HIRE_DATE AS StartDate 
FROM EMP;

/* 8. Display the names and hire dates of all employees in the order they were hired. */

SELECT * FROM EMP;

SELECT ENAME , HIRE_DATE 
FROM EMP
ORDER BY HIRE_DATE ASC;

/* 9. Display the names and salaries of all employees in reverse salary order.*/

SELECT ENAME , SALARY 
FROM EMP
ORDER BY SALARY DESC;

/* 10. Display 'ename" and "deptno" who are all earned commission and display salary in 
reverse order. */

SELECT ENAME , DEPT_NO 
FROM EMP
WHERE COMMISSION IS NOT NULL
ORDER BY SALARY DESC;

/* 11. Display the last name and job title of all employees who do not have a manager */

SELECT ELNAME , DEPT 
FROM EMP 
WHERE DEPT ;

/* 12. Display the last name, job, and salary for all employees whose job is sales representative 
or stock clerk and whose salary is not equal to $2,500, $3,500, or $5,000 */

SELECT ELNAME , DEPT , SALARY 
FROM EMP 
WHERE DEPT = 'CLERK'
AND SALARY NOT IN (2500,3500,5000); 


/* SQL 4 , 8 PAGE */

/* 1) Display the maximum, minimum and average salary and commission earned.*/


SELECT 
MIN(SALARY) AS MINIMUMSALARY , 
MAX(SALARY) AS MAXIMUMSALARY , 
AVG(SALARY) AS AVERAGESALARY 
FROM DEPT;

/* 2) Display the department number, total salary payout and total commission payout for 
each department. */

SELECT DEPT_NO ,  SUM(SALARY) AS TOTALSALARY , SUM(COMMISSION) AS TOTALCOMMISSION 
FROM DEPT 
GROUP BY DEPT_NO;

/*3) Display the department number and number of employees in each department.*/

SELECT DEPT_NO , COUNT(DEPTT) AS NUMBEROFEMPLOYEES
FROM DEPT
GROUP BY DEPT_NO;

/*4) Display the department number and total salary of employees in each department.*/

SELECT DEPTT ,SUM(SALARY) AS TOTALSALARY 
FROM DEPT 
GROUP BY DEPTT;

/*5) Display the employee's name who doesn't earn a commission. Order the result set 
without using the column name*/

SELECT ENAME 
FROM DEPT
WHERE COMMISSION IS NOT NULL
ORDER BY 1 ;

/*6) Display the employees name, department id and commission. If an Employee doesn't 
earn the commission, then display as 'No commission'. Name the columns appropriately*/

SELECT CONCAT(ENAME,' ',ELNAME) AS 'NAME' , DEPT_NO ,
	CASE 
    WHEN COMMISSION IS NULL THEN 'NO COMMISSION'
    ELSE DEPT.COMMISSION 
    END AS COMMISSION
FROM DEPT;

/*7) Display the employee's name, salary and commission multiplied by 2. If an Employee 
doesn't earn the commission, then display as 'No commission. Name the columns 
appropriately*/

SELECT CONCAT(ENAME,' ',ELNAME) AS 'NAME' , DEPT_NO ,
	CASE 
    WHEN COMMISSION IS NULL THEN 'NO COMMISSION'
    ELSE DEPT.COMMISSION * 2
    END AS COMMISSION
FROM DEPT;

/*8) Display the employee's name, department id who have the first name same as another 
employee in the same department*/

SELECT ENAME , JOB_ID 
FROM DEPT
WHERE DEPTT;

/*9) Display the sum of salaries of the employees working under each Manager.*/

SELECT SUM(SALARY) 
FROM DEPT
WHERE DEPTT = 'MANAGER'; 

/*10) Select the Managers name, the count of employees working under and the department 
ID of the manager.*/




    
/*11) Select the employee name, department id, and the salary. Group the result with the 
manager name and the employee last name should have second letter 'a!*/
 
 SELECT ENAME , DEPT_NO , SALARY 
 FROM DEPT
 WHERE ENAME NOT LIKE 'a%';
 
 /*12) Display the average of sum of the salaries and group the result with the department id. 
Order the result with the department id.*/

SELECT * FROM DEPT;

SELECT DEPT_NO , AVG(SALARY) AS AVARAGE_SALARY
FROM DEPT
GROUP BY DEPT_NO;

/*13) Select the maximum salary of each department along with the department id*/

SELECT DEPT_NO , MAX(SALARY) AS MAX_SALARY
FROM DEPT
GROUP BY DEPT_NO;

/*14) Display the commission, if not null display 10% of salary, if null display a default value 1*/

USE HR;

SELECT ENAME ,
	CASE 
		WHEN COMMISSION IS NOT NULL THEN COMMISSION
        WHEN SALARY IS NOT NULL THEN 0.01 * SALARY
        ELSE 1
	END AS DISPLAYED_COMMISSION
FROM DEPT;
        
/* SQL 4 , 9 PAGE */

/* 1. Write a query that displays the employee's last names only from the string's 2-5th 
position with the first letter capitalized and all other letters lowercase, Give each column an 
appropriate label.*/

SELECT 
    SUBSTRING(UPPER(LOWER(ELNAME)), 2, 4) AS Modified_last_name
FROM DEPT;

/*2. Write a query that displays the employee's first name and last name along with a " in 
between for e.g.: first name : Ram; last name : Kumar then Ram-Kumar. Also displays the 
month on which the employee has joined.*/

SELECT ENAME , ELNAME AS AMONG_WITH_A
FROM DEPT
WHERE ENAME LIKE 'A%';

/*3. Write a query to display the employee's last name and if half of the salary is greater than 
one thousand then increase the salary by 10% else by 11.5% along with the bonus amount of 
1500 each. Provide each column an appropriate label.*/

SELECT * FROM DEPT;

SELECT 
	ELNAME AS LASTNAME,
    CASE 
		WHEN SALARY * 0.5 > 1000 THEN SALARY * 1.1
        ELSE SALARY * 1.115
	END AS UPDATED_SALARY,
    1500 AS BONUS_AMOUNT
FROM DEPT;

/*4. Display the employee ID by Appending two zeros after 2nd digit and 'E' in the end, 
department id, salary and the manager name all in Upper case, if the Manager name 
consists of 'z' replace it with '$!*/

SELECT 
	CONCAT(SUBSTRING(JOB_ID,1,2),'00','E') AS EMPLOYEE_ID,
    JOB_ID AS DEPARTMENT_ID,
    UPPER(CONCAT(
		IF(DEPTT LIKE '%Z%',REPLACE(DEPTT,'Z','$!'),DEPTT)
	))AS MANAGER_NAME,
    UPPER(SALARY) AS SALARY
FROM DEPT;

/*5. Write a query that displays the employee's last names with the first letter capitalized and 
all other letters lowercase, and the length of the names, for all employees whose name 
starts with J, A, or M. Give each column an appropriate label. Sort the results by the 
employees' last names*/

SELECT 
    CONCAT(UPPER(SUBSTRING(ELNAME, 1, 1)), LOWER(SUBSTRING(ELNAME, 2))) AS FormattedLastName,
    LENGTH(ELNAME) AS NameLength
FROM 
    DEPT
WHERE 
    ELNAME LIKE 'J%' OR ELNAME LIKE 'A%' OR ELNAME LIKE 'M%'
ORDER BY 
    ELNAME;
    
/*6. Create a query to display the last name and salary for all employees. Format the salary to 
be 15 characters long, left-padded with $. Label the column SALARY*/

SELECT 
    ELNAME,
    LPAD(CONCAT('$', FORMAT(SALARY, 2)), 15, '$') AS SALARY
FROM 
    DEPT;
    
    /*7. Display the employee's name if it is a palindrome*/
    
SELECT 
    ENAME AS EmployeeName
FROM 
    DEPT
WHERE 
    ENAME = REVERSE(ENAME);
    
/*8. Display First names of all employees with initcaps.*/

SELECT 
	CONCAT(UPPER(SUBSTRING(ENAME,1,1)),LOWER(SUBSTRING(ENAME,2)))AS FROMATED_FIRSTNAME
FROM DEPT;

/*9. From LOCATIONS table, extract the word between first and second space from the 
STREET ADDRESS column.*/

SELECT * FROM DEPT;

/*loCATION NOT DEFINE IN THE TABLE*/

/*10. Extract first letter from First Name column and append it with the Last Name. Also add 
"@systechusa.com" at the end. Name the column as e-mail address. All characters should 
be in lower case. Display this along with their First Name.*/

SELECT 
	CONCAT(
		LOWER(SUBSTRING(ENAME,1,1)),
        LOWER(ELNAME),
        '@systechusa.com'
	) AS Email_address ,
    ENAME
FROM DEPT;

/*11. Display the names and job titles of all employees with the same job as Trenna.*/

SELECT * FROM DEPT;

SELECT 
	ENAME,
    ELNAME,
    DEPTT
FROM DEPT
WHERE DEPTT = (SELECT DEPTT FROM DEPT WHERE ENAME='Trenna');

/*12. Display the names and department name of all employees working in the same city as 
Trenna.*/

/*ADDRESS NOT INCLUDE IN THE TABLE*/

/*13. Display the name of the employee whose salary is the lowest.*/

SELECT MIN(SALARY) AS MIN_SALARY , ENAME
FROM DEPT;

/*14. Display the names of all employees except the lowest paid.*/

SELECT ENAME , SALARY 
FROM DEPT
WHERE 
	SALARY > (SELECT MIN(SALARY) FROM DEPT);
    
/* SQL 4 , 10 PAGE */

USE HR;

/*1. Write a query to display the last name, department number, department name for all 
employees.*/

SELECT * FROM DEPT;

SELECT ELNAME , 
	   DEPT_NO ,
       DEPTT
FROM DEPT;

/*2. Create a unique list of all jobs that are in department 10. Include the location of the 
department in the output.*/

SELECT DISTINCT 
		JOB_ID,
		(SELECT DEPTT FROM DEPT WHERE DEPT_NO = '10') AS DEPARTMENT_LOCTION
FROM DEPT
WHERE DEPT_NO = '10';

/*3. Write a query to display the employee last name,department name,location id and 
city of all employees who earn commission.*/

SELECT ELNAME , DEPTT , JOB_ID 
FROM DEPT
WHERE COMMISSION IS NOT NULL;

/*4. Display the employee last name and department name of all employees who have an 'a' in their last name*/

SELECT ELNAME , DEPTT
FROM DEPT
WHERE ELNAME LIKE "%a";


/*5.Display the employee last name and employee number along with their manager's last name and
 manager number (including the employees who have no manager).*/ 
 
 SELECT
    ELNAME AS employee_last_name,
    JOB_ID,
    (SELECT ELNAME FROM DEPT WHERE JOB_ID = DEPT_NO),
    JOB_ID AS employee_number
FROM
    DEPT;

/*6. Create a query that displays employees last name,department number,and all the employees
 who work in the same department as a given employee.*/
 
 SELECT ELNAME , DEPT_NO 
 FROM DEPT;
 
 /*7. Create a query that displays the name,job,department name,salary,grade for all employees.
 Derive grade based on salary(>=500=A, >=300=B,<3000=C)*/
 
 SELECT
    ELNAME AS employee_name,
    JOB_ID AS job,
    (SELECT DEPTT FROM DEPT WHERE JOB_ID = DEPT_NO) AS department_name,
    SALARY,
    CASE
        WHEN SALARY >= 500 THEN 'A'
        WHEN SALARY >= 300 THEN 'B'
        ELSE 'C'
    END AS grade
FROM
    DEPT;

/*10. Display the names and hire date for all employees who were hired before their 
managers along withe  their manager names and hire date. Label the columns as Employee name,
 emp_hire_date,manager name,man_hire_date*/
 
 SELECT
    CONCAT(ENAME, ' ', ELNAME) AS "Employee name",
    HIRE_DATE AS "emp_hire_date",
    (SELECT CONCAT(ENAME, ' ',ELNAME) FROM DEPT m WHERE DEPT_NO= JOB_ID) AS "manager name",
    (SELECT HIRE_DATE FROM DEPT WHERE DEPT_NO = JOB_ID) AS "man_hire_date"
FROM
    DEPT 
WHERE
    HIRE_DATE < (SELECT HIRE_DATE FROM DEPT m WHERE DEPT_NO = JOB_ID);
    
    
/* SQL 4 , 13 PAGE*/

use hr;

SELECT * FROM DEPT;

/*1) Find the date difference between the hire date and resignation_date for all the 
employees. Display in no. of days, months and year(1 year 3 months 5 days).
Emp_ID Hire Date Resignation_Date*/






    
    


 
 



 



        
























    


