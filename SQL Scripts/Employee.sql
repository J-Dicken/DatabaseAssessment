CREATE TABLE Employee
(Employee# INT NOT NULL,
Store# INT NOT NULL,
Name VARCHAR2(30) NOT NULL,
HouseNumber VARCHAR2(5) NOT NULL,
Street VARCHAR2(30) NOT NULL,
Postcode VARCHAR2(12) NOT NULL,
Telephone VARCHAR2(15) NOT NULL,
Email VARCHAR2(30) NOT NULL,
NextOfKin VARCHAR2(30),
PRIMARY KEY (Employee#),
FOREIGN KEY (Store#)
REFERENCES Store
ON DELETE CASCADE);

INSERT INTO Employee VALUES (1,1,'Maya Stanley','89','Marcham Road','ME1 9QL','07839 036466','MayaStanley@gmail.com','Arnold Stanley');
INSERT INTO Employee VALUES (2,1,'Christopher Whitehouse','53','Old Chapel Road','BH21 1FR','07905 200 877','ChrisWhitehouse@gmail.com','Jessica Whitehouse');
INSERT INTO Employee VALUES (3,1,'Kiera Gibbons','77','Cloch Road','TN29 5GS','07821 485066','Kgibbons@gmail.com','Laura Gibbons');
INSERT INTO Employee VALUES (4,2,'Luca Hartley','52','Friar Street','ME3 9LR','07060 987482','LucaH@gmail.com','Karen Hartley');
INSERT INTO Employee VALUES (5,2,'Kieran O"Brien','88','Whitby Road','NN14 7LL','07783 224635','KOBrien@gmail.com','Anthony O"brien');
INSERT INTO Employee VALUES (6,2,'Declan Sykes','78','Fulford Road','CO10 7FE','07852 703669','Dsykes@live.com','Lucy Sykes');
INSERT INTO Employee VALUES (7,3,'Finley Sharp','73','Mill Lane','NN17 5JB','07737 072631','FinleySharp@gmail.com','Gary Sharp');
INSERT INTO Employee VALUES (8,3,'Sean Dunn','14','Earls Avenue','AB51 6GZ','07005 583331','Dunn92@gmail.com','David Dunn');
INSERT INTO Employee VALUES (9,3,'Dylan Armstrong','44','Ermin Street','BN18 5HP','07718 112355','DylanArm88@live.com','Abby Armstrong');
INSERT INTO Employee VALUES (10,4,'Victoria Stanley','73','Warner Close','PO33 4LW','07074 220491','ViccyStan94@gmail.com','Paul Stanley');
INSERT INTO Employee VALUES (11,4,'Laura Storey','92','Oxford Road','S70 9QX','07859 389376','LauraStanley@live.com','Stan Storey');
INSERT INTO Employee VALUES (12,4,'John Swift','94','Ilchester Road','YO6 8NG','07934 859130','JohnSwift@gmail.com','Penny Swift');
INSERT INTO Employee VALUES (13,5,'Olivia Walters','69','Tadcaster Road','DT7 1SS','07820 713079','LivWalters@gmail.com','Steve Walters');
INSERT INTO Employee VALUES (14,5,'Ellis Miah','93','Wood Lane','ST9 3RU','07002 489322','ElMiah@live.com','Stacey Miah');
INSERT INTO Employee VALUES (15,5,'Sarah Carr','96','Newmarket Road','TQ13 0EU','07706 893607','SarahCarr@gmail.com','Jimmy Carr');
INSERT INTO Employee VALUES (16,6,'Joe Wilkins','62','Haslemere Road','DH8 2EN','07733 021 290','JoeyW@gmail.com','Patricia Wilkins');
INSERT INTO Employee VALUES (17,6,'Elise Frost','33','Prospect Hill','SY8 4FT','07027 942761','elisefrost@gmail.com','Tim Frost');
INSERT INTO Employee VALUES (18,6,'Finley McCarthy ','96','Gordon Terrace','BA1 1ER','07020 274857','Finmaccarthy@gmail.com','Tom McCarthy');
INSERT INTO Employee VALUES (19,7,'Charlie Humphreys','53','City Walls Road','HR3 8JN','07955 539327','CharlieHumph@live.com','Megan Humphries');
INSERT INTO Employee VALUES (20,7,'Evan Preston','43','Prestwick Road','IV22 7WZ','07764 275427','evanpreston@live.com','Frank Preston');
INSERT INTO Employee VALUES (21,7,'Harley Yates','14','Fordham Road','YO25 5QP','07036 156068','hyates79@gmail.com','Linda Yates');
INSERT INTO Employee VALUES (22,8,'Laura Randall','87','Oxford Road','HR2 7XY','07042 776846','laurarandall@live.com','James Randall');
INSERT INTO Employee VALUES (23,8,'Jay Riley','24','Bridge Street','BN12 4YS','07022 879427','jayriley@gmail.com','Jane Riley');
INSERT INTO Employee VALUES (24,8,'Kate Bradley','60','Seafield Street','SY22 4LF','07776 629236','katebrad@live.com','Lucy Bradley');
INSERT INTO Employee VALUES (25,9,'Noah Newman','37','Ballifeary Road','IV12 5XP','07071 799558','newnoah@gmail.com','Steven Newman');
INSERT INTO Employee VALUES (26,9,'Jude Warren','9','Horsefair Green','WV16 9TW','07961 958275','judewarren@gmail.com','Ted Warren');
INSERT INTO Employee VALUES (27,9,'Taylor Newman','92','Newport Road','HR2 0ZH','07026 270774','taylornewman@gmail.com','Alice Newman');
INSERT INTO Employee VALUES (28,10,'Daisy Hughes','7','Spilman Street','CV23 4JP','07072 097672','daisyhughes@gmail.com','Stacy Hughes');
INSERT INTO Employee VALUES (29,10,'Harley Alexander','56','Ilchester Road','HR8 9WX','07887 527092','harleyalex@gmail.com','Henry Alexander');
INSERT INTO Employee VALUES (30,10,'Melissa Rhodes','46','Castledore Road','HS2 6DS','07010 105242','melrhodes@live.com','Randy Rhodes');
