CREATE DATABASE SCHOOL ;

USE SCHOOL ;

CREATE TABLE STUDENT 
(
STDID INT PRIMARY KEY AUTO_INCREMENT , 
STDNAME VARCHAR(20) ,
SEX VARCHAR (10) ,
PERCENTAGE INT ,
CLASS INT , 
SEC VARCHAR (5),
STREAM VARCHAR(20) ,
DOB date
);

-- SHOW ALL COLUMN 

SELECT * FROM STUDENT;

-- 1. To display all the records form STUDENT table. 

SELECT * FROM STUDENT ;

-- 2. To display any name and date of birth from the table STUDENT. 

SELECT STDNAME , DOB 
FROM STUDENT ;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table. 

SELECT * FROM STUDENT
WHERE PERCENTAGE >= 80 ;

-- 4. To display student name, stream and percentage where percentage of student is more than 80.

SELECT STDNAME , STREAM , PERCENTAGE 
FROM STUDENT
WHERE PERCENTAGE > 80 ;

