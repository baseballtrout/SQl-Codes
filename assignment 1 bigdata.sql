use bigdata;
# 1A)
create table Product (ID INT, Name VARCHAR(40), ProductType VARCHAR (3), OriginDate Date, Weight Decimal(6,1));

##1B)
Insert INTO Product Values( 100, 'Tricorder', 'TC', '2020-08-11', 2.4),
							( 200, 'Food replicator','FOD', '2020-09-21', 54.2),
                            ( 300, 'Cloaking device','CD', '2019-02-04', 177.9)
       
## 1C)
SELECT * FROM bigdata.product;


DROP Table IF EXISTS Horses;

## 2A
create table Horses (
ID INT AUTO_INCREMENT, 
RegisteredName VARCHAR(40), 
Breed VARCHAR (40), 
Height Decimal(6,1), 
BirthDate Date,  
PRIMARY KEY (ID) 
);
##2B)
Insert INTO Horses ( RegisteredName, Breed, Height, BirthDate) Values ('Babe', 'QuarterHorse', 15.3,'2015-02-10');
Insert INTO Horses ( RegisteredName, Breed, Height, BirthDate) Values('Independence', 'Holstenier', 16.0, '2017-03-13');
Insert INTO Horses ( RegisteredName, Breed, Height, BirthDate) Values('Ellie', 'Saddlebred', 15.0, '2016-12-22');
Insert INTO Horses ( RegisteredName, Breed, Height, BirthDate) Values(NULL, 'Egyptian Arab', 14.9, '2019-10-12');
##2C)
SELECT * FROM bigdata.horses;