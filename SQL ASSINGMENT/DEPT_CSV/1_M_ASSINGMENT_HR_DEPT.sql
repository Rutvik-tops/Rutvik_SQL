USE HR;
SELECT * FROM DEPT ;

-- 1) Display the maximum, minimum and average salary and commission earned.

SELECT 
    MAX(SALARY), MIN(SALARY), AVG(SALARY), AVG(COMMISSION)
FROM
    DEPT;

-- 2) Display the department number, total salary payout and total commission payout for each department.

SELECT DEPT_NO , SUM(SALARY) AS TOTAL_SALARY_PAYOUT , SUM(COMMISSION) AS TOTAL_COMMISION_PAYOUT
FROM DEPT
GROUP BY DEPT_NO
;

-- 3) Display the department number and number of employees in each department. 
 
 SELECT DEPT_NO , COUNT(*) AS employee_count
FROM DEPT
GROUP BY DEPT_NO;

-- 4) Display the department number and total salary of employees in each department. 

SELECT DEPT_NO , SUM(SALARY) AS TOTAL_SALARY_PAYOUT
FROM DEPT
GROUP BY DEPT_NO;



