CREATE DATABASE DT1 ;
USE DT1 ;
CREATE TABLE PYTHON 
(
S_ROLLNO INT,
S_NAME VARCHAR (50),
S_LNAME VARCHAR (50),
S_CITY VARCHAR (50)
);

SELECT * FROM PYTHON ;

INSERT INTO PYTHON (S_ROLLNO, S_NAME, S_LNAME, S_CITY) VALUES
(1,"Rutvik","Patel","Sidhpur"),
(2,"Shubh","Joshi","Palanpur"),
(3,"Shivam","Patel","Chaapi"),
(4,"Arpit","Parikh","Sidhpur"),
(5,"Dixit","Thakar","Sidhpur"),
(6,"Arman","Patel","Himmatnagar"),
(7,"Shubham","Patel","Sidhpur"),
(8,"Krunal","Rawat","Sidhpur");

INSERT INTO PYTHON (S_ROLLNO,S_CITY) VALUES
(9,"AHMEDABAD"),
(10,"PALANPUR");
