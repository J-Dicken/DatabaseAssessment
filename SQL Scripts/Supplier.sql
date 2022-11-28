CREATE TABLE Supplier
(Supplier# INT NOT NULL,
Name VARCHAR2(30) NOT NULL,
Building# INT NOT NULL,
Street VARCHAR2(30) NOT NULL,
Postcode VARCHAR2(12) NOT NULL,
Telephone VARCHAR2(13) NOT NULL,
Email VARCHAR2(30) NOT NULL,
PRIMARY KEY (Supplier#));

INSERT INTO Supplier VALUES (1,'Falcon Logistics',7,'Axletree Way','WS10 9QY','0370 444 1234','enquiries@falcon.com');
INSERT INTO Supplier VALUES (2,'Trade Distribution',3,'Pointon Way','WR9 0LR','01905 823 298','contact@tradedistribution.org');
INSERT INTO Supplier VALUES (3,'O"Rourkes Logistics',1,'Paxton Place','WN8 9QH','01695 722 031','contact@orourkes.com');
INSERT INTO Supplier VALUES (4,'A2B Couriers',11,'Ruby Street','SE15 1LR','0207 930 1070','deliveries@a2bcouries.co.uk');
INSERT INTO Supplier VALUES (5,'Vodel',5,'Avocet Road','EX2 7ST','01392 261 700','enquiries@vodel.com');
INSERT INTO Supplier VALUES (6,'West Country Logistics',8,'Dudbridge Hill','GL5 3HN','01453 769 600','contact@westcountry.com');
