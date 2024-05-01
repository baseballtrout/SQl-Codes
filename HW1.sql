USE MyDB; 

#1A
CREATE TABLE Product(
ID int,
Name varchar(40),
ProductType CHAR(3),
OriginDate DATE,
Weight DECIMAL(6, 1)
);

#1B.
insert into Product (ID, Name, ProductType, OriginDate, Weight) values (100, 'Tricorder', 'TC','2020-08-11',2.4);
insert into Product (ID, Name, ProductType, OriginDate, Weight) values (200, 'Food replicator', 'FOD','2020-09-21',54.2);
insert into Product (ID, Name, ProductType, OriginDate, Weight) values (300, 'Cloaking device', 'CD','2019-02-04',117.9);

#1C.?
SHOW TABLES;
SELECT * FROM Product;

#2A.
CREATE TABLE Horse(
ID int auto_increment,
RegisteredName varchar(40),
Breed varchar(40),
Height Decimal(6,1),
Birthdate DATE,
PRIMARY KEY (ID)
);

#2B.
insert into Horse (RegisteredName, Breed, Height, Birthdate) values ('Babe', 'Quarter Horse', 15.3,'2015-02-10');
insert into Horse (RegisteredName, Breed, Height, Birthdate) values ('Independence', 'Holsteiner', 16.0,'2017-03-13');
insert into Horse (RegisteredName, Breed, Height, Birthdate) values ('Ellie', 'Saddlebred', 15.0,'2016-12-22');
insert into Horse (RegisteredName, Breed, Height, Birthdate) values (NULL, 'Egyptian Arab', 14.9,'2019-10-12');


#2C. ?
SHOW TABLES;
SELECT * FROM Horse;