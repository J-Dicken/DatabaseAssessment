CREATE TABLE Customer
(Customer# int NOT NULL,
Name VARCHAR2(25) NOT NULL,
DOB VARCHAR2(10) NOT NULL,
HouseNumber VARCHAR2(5) NOT NULL,
Street VARCHAR2(25) NOT NULL,
Postcode VARCHAR2(8) NOT NULL,
Telephone VARCHAR2(12),
Email VARCHAR2(30) NOT NULL,
PRIMARY KEY (Customer#));

INSERT INTO Customer VALUES (1,'Elizabeth Cox','1958-09-26','84','Caxton Place','CW10 0DP','07720 349119','ElizabethCox@dayrep.com');
INSERT INTO Customer VALUES (2,'Max Whitehead','1963-11-26','9','Berkeley Road','HS5 2DT','07832 377518','MaxWhitehead@gmail.com');
INSERT INTO Customer VALUES (3,'Tia Yates','1957-07-14','6','Southend Avenue','NP2 1XW','07988 153881','TiaYates@live.com');
INSERT INTO Customer VALUES (4,'Brandon Gray','1983-12-19','62','Exning Road','NR12 5DY','07742 787831','BGray83@gmail.com');
INSERT INTO Customer VALUES (5,'Evan Stephenson','1984-03-30','71','Sea Road','TD15 4TY','07869 497599','StephEvan@live.com');
INSERT INTO Customer VALUES (6,'Matilda Webb','1993-02-15','46','South Street','G69 8TG','07718 387975','MatildWebb@gmail.com');
INSERT INTO Customer VALUES (7,'Luca Long','1977-06-06','23','Ash Lane','EX31 0XX','07985 973271','LucaJLong@live.com');
INSERT INTO Customer VALUES (8,'Ryan Foster','1992-01-15','80','Stone Street','KY10 2DE','07817 891357','RyanForster@gmail.com');
INSERT INTO Customer VALUES (9,'Declan Wall','1997-10-17','39','Holgate Road','NG21 5DD','07713 676981','Dwall@gmail.com');
INSERT INTO Customer VALUES (10,'Tia Rees','1988-09-10','1','Marcham Road','HS2 2BB','07948 108447','TiaRees@live.com');
