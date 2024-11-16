-- retrieve ALL DATA FROM EMPLOYEES.
SELECT * FROM employee;

-- calculate TOTAL NUMBER OF EMPLOYEES.
SELECT COUNT(*) AS  NUMBER_OF_EMPLOYEES FROM employee;

--retrieve fname column from employee.
select  Fname FROM employee;

--ADD COLUMN IN PLANE TABLE.
ALTER TABLE PLANE ADD NUM_SEAT INT;

--REMOVE COLUMN IN PLANE TABLE.
ALTER TABLE PLANE DROP NUM_SEAT ;

-- DELETE SPECIFIC RECORD.
DELETE FROM AIRLINE WHERE air_name='American Airlines';

-- update specific value.
update employee
 set salary = 20000 
WHERE essn=1001;

-- order by desc
select pfname, plname from passenger
order by pfname DESC;

-- order by asc
select t_flight_number from trip
order by trip_date asc;

-- max min avg count sum QUERY
SELECT max(salary) as "Hihest salary", min(salary) as "Lowest salary",
AVG(salary) as "Average salary",sum(salary) as "total salary",
count(*) "no of employees"
from employee;

-- Group by query
SELECT position ,max(salary) as "Hihest salary", min(salary) as "Lowest salary",
AVG(salary) as "Average salary",sum(salary) as "total salary",
count(*) "no of employees"
from employee
GROUP BY position;

-- having query
select pfname,plname,seat_no
from passenger join ticket
on pag_pass_id = p_pass_id
group by seat_no
HAVING seat_no>102;

-- nested QUERY
select fname , lname ,salary from employee
WHERE salary =(SELECT max(salary) from employee);

-- nested QUERY
select fname , lname , salary  from employee
WHERE salary > (SELECT AVG(salary) from employee);

--where like QUERY
SELECT * from employee
where fname like 's%';

-- DISTINCT QUERY
select DISTINCT salary from employee;

--between QUERY
SELECT * from passenger
where flight_number BETWEEN 102 and 104;

-- in query 
SELECT * from employee
where salary in (50000,60000);

-- not in query
SELECT * from employee
where salary not in (50000,60000); 
