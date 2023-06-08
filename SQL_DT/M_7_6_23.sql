use dt1;
select * from python;

select S_NAME from python
where S_ROLLNO = 5 and S_CITY = "Sidhpur";

select * from python
where S_ROLLNO = 5 or S_CITY = "Sidhpur";

select * from python
order by S_NAME asc;

select * from python
order by S_NAME desc;

select min(S_ROLLNO) from python;

select max(S_ROLLNO) from python;

select * from python;






