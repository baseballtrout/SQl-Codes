use bigdata;


DROP Table IF EXISTS employee;

##1.)
create table Employee (ID INT, F_Name VARCHAR(60),
L_Name VARCHAR(60),  Email VARCHAR (60), 
P_number VARCHAR(60), H_Date VARCHAR(60),
J_ID VARCHAR(60), Salary FLOAT, C_PCT FLOAT,
M_ID INT, D_ID INT);

##2)
## I used the table data import wizard before i went in excel and put 0s for the values that didnt have anything.
SELECT * FROM bigdata.employee;

##3.) 
SELECT AVG(Salary)
FROM employee;

##4.)
SELECT max(Salary)
FROM employee;

##5)
SELECT F_name, L_name, Salary 
FROM Employee 
WHERE Salary > 10000; 

##6)
alter table employee add Full_name VARCHAR(60);
SET SQL_SAFE_UPDATES=0;
update employee set Full_name = concat(F_name,' ', L_name);

alter table employee add Contact_Details VARCHAR(60);
update employee set Contact_Details  = concat('Phone: ', P_number, '    ' , Email);

SELECT Full_name, Contact_Details, Salary 
FROM employee 
WHERE Salary BETWEEN '9000' AND '18000'; 

##7.)
SELECT F_name, L_name, Salary 
FROM Employee 
WHERE F_name LIKE'A%';

##8)
SELECT M_ID, Count(*)
FROM Employee 
Group BY M_ID;

##9)
SELECT F_name, L_name, H_Date, J_ID 
FROM Employee 
WHERE J_ID IN ('IT_PROG', 'AD_VP');


## 10)
SELECT F_name, L_name 
FROM employee 
WHERE F_name LIKE'D%' or  L_name LIKE'D%';


