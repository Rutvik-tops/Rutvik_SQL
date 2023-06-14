use dt1;
select * from python ; 

select * from python where S_LNAME In ('PATEL'); 

select * from python where s_lname not in ('Patel', 'Joshi');

select * from python where S_ROLLNO between 1 and 5 ;

select * from python where S_ROLLNO between 1 and 5 and S_NAME not in  ('Rutvik','Shubh') ;

alter table python
add column DOB date ;

select * from python;

select * from python 
where DOB  between '2004-02-20' and '2009-05-25' ; 






