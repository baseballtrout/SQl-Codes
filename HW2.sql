USE MyDB; 

#1. Write the SQL query to create an Employee table
CREATE TABLE Employee1(
EMPLOYEE_ID int,
FIRST_Name varchar(60),
LAST_Name varchar(60),
EMAIL varchar(60),
PHONE_Number varchar(60),
HIRE_Date varchar(60),
JOB_ID varchar(60),
SALARY float,
COMMISSION_PCT float,
MANAGER_ID int,
DEPARTMENT_ID int
);

#2. Write the SQL query to insert (load) the values into Employee table from Employee.csv file.
##We were having issues downloading the data into already existing data set//using the manually loaded table for this assignment
SHOW TABLES;
SELECT * FROM mydb.employee1;

SELECT COUNT(*) FROM employee1;
##I have 49 instead of 50 rows. I am missing employee 100 from the import for some reason, some of my calculations will not be the same as in the HW2. 
 

#3. Write the SQL query to find average salary of an employee from Employee table.
SELECT avg(salary)
FROM employee1;

#4. Write the SQL query to find maximum salary from Employee table. 
SELECT MAX(salary)
FROM employee1;

#5. From Employee table, write a SQL query to find those employees whose salaries are greater than 10000. Return firt name, last name, and salary. 
SELECT first_name, last_name, salary 
from employee1
where salary > 10000; 

#6. From Employee table, write a SQL query to find the employees whose salary is in the range between 9000 and 18000. Return full name, contact details and salary.
SELECT CONCAT(FIRST_NAME,' ', LAST_NAME) AS Full_Name, CONCAT( 'Phone: ',PHONE_NUMBER,' ','Email: ', EMAIL) AS Contact_Details, salary 
FROM employee1
WHERE salary >= 9000 and salary <= 18000;

#7. From Employee table, write a SQL query to find the employees whose first name starts with the letter ‘A’. Return the first and last name, and salary. 
SELECT first_name, last_name, salary 
from employee1
where FIRST_NAME LIKE 'A%'; 

#8. From Employee table, write a SQL query to count the number of employees worked under each manager. Return manager ID and the number of employees.
SELECT MANAGER_ID,  COUNT(*)
from employee1
GROUP BY MANAGER_ID;

#9. From Employee table, write a SQL query to find all those employees who are either IT Programmer (IT_PROG) or Additonal Vice President (AD_VP). Return first name, last name and hire date.
SELECT first_name, last_name, hire_date, job_id
from employee1
where job_id = 'IT_PROG' or job_id = 'AD_VP';

#10. From Employee table, write a SQL query to find the employees whose first or last name begins with 'D'. Return first name and last name.
SELECT first_name, last_name
from employee1
where FIRST_NAME LIKE 'D%'OR LAST_NAME LIKE 'D%'; 