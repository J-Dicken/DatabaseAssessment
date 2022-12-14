CREATE TABLE custOrder
(Order# INT NOT NULL,
DatePlaced VARCHAR2(12) NOT NULL,
Customer# INT,
Product# INT NOT NULL,
Employee# INT NOT NULL,
PRIMARY KEY (Order#),
FOREIGN KEY (Customer#)
REFERENCES Customer
ON DELETE SET NULL,
FOREIGN KEY (Product#)
REFERENCES Product
ON DELETE CASCADE);

INSERT INTO custOrder VALUES (1,'2020-01-05',9,6,3);
INSERT INTO custOrder VALUES (2,'2020-02-23',9,5,6);
INSERT INTO custOrder VALUES (3,'2020-02-29',4,6,9);
INSERT INTO custOrder VALUES (4,'2020-04-06',6,3,2);
INSERT INTO custOrder VALUES (5,'2020-04-13',9,2,5);
INSERT INTO custOrder VALUES (6,'2020-04-24',5,4,12);
INSERT INTO custOrder VALUES (7,'2020-05-08',7,3,8);
INSERT INTO custOrder VALUES (8,'2020-05-13',4,11,15);
INSERT INTO custOrder VALUES (9,'2020-05-16',1,9,11);
INSERT INTO custOrder VALUES (10,'2020-05-27',4,9,14);
INSERT INTO custOrder VALUES (11,'2020-06-02',9,2,17);
INSERT INTO custOrder VALUES (12,'2020-06-04',7,6,18);
INSERT INTO custOrder VALUES (13,'2020-07-24',4,4,21);
INSERT INTO custOrder VALUES (14,'2020-07-28',3,9,20);
INSERT INTO custOrder VALUES (15,'2020-08-01',9,3,23);
INSERT INTO custOrder VALUES (16,'2020-08-12',6,8,26);
INSERT INTO custOrder VALUES (17,'2020-08-27',1,10,24);
INSERT INTO custOrder VALUES (18,'2020-09-26',9,1,29);
INSERT INTO custOrder VALUES (19,'2020-09-30',3,2,2);
INSERT INTO custOrder VALUES (20,'2020-10-12',3,10,27);
INSERT INTO custOrder VALUES (21,'2020-10-27',10,11,30);
INSERT INTO custOrder VALUES (22,'2020-10-28',2,5,3);
INSERT INTO custOrder VALUES (23,'2020-11-10',8,7,6);
INSERT INTO custOrder VALUES (24,'2020-11-21',10,9,5);
INSERT INTO custOrder VALUES (25,'2020-11-28',8,8,8);
INSERT INTO custOrder VALUES (26,'2020-12-13',7,8,11);
INSERT INTO custOrder VALUES (27,'2021-01-15',4,10,9);
INSERT INTO custOrder VALUES (28,'2021-01-24',1,4,12);
INSERT INTO custOrder VALUES (29,'2021-02-02',8,6,15);
INSERT INTO custOrder VALUES (30,'2021-02-02',7,8,14);
INSERT INTO custOrder VALUES (31,'2021-03-13',7,11,18);
INSERT INTO custOrder VALUES (32,'2021-03-18',3,7,21);
INSERT INTO custOrder VALUES (33,'2021-03-25',10,11,24);
INSERT INTO custOrder VALUES (34,'2021-04-01',9,6,27);
INSERT INTO custOrder VALUES (35,'2021-04-02',5,5,30);
INSERT INTO custOrder VALUES (36,'2021-05-22',9,10,3);
INSERT INTO custOrder VALUES (37,'2021-05-26',6,6,6);
INSERT INTO custOrder VALUES (38,'2021-06-09',2,4,9);
INSERT INTO custOrder VALUES (39,'2021-06-21',9,7,12);
INSERT INTO custOrder VALUES (40,'2021-07-04',1,2,17);
INSERT INTO custOrder VALUES (41,'2021-07-15',7,2,20);
INSERT INTO custOrder VALUES (42,'2021-08-20',10,9,23);
INSERT INTO custOrder VALUES (43,'2021-08-24',5,5,15);
INSERT INTO custOrder VALUES (44,'2021-08-27',8,1,26);
INSERT INTO custOrder VALUES (45,'2021-08-29',5,3,29);
INSERT INTO custOrder VALUES (46,'2021-08-30',5,1,2);
INSERT INTO custOrder VALUES (47,'2021-09-15',6,1,5);
INSERT INTO custOrder VALUES (48,'2021-10-03',9,3,8);
INSERT INTO custOrder VALUES (49,'2021-11-29',4,10,18);
INSERT INTO custOrder VALUES (50,'2021-12-26',6,11,21);
INSERT INTO custOrder VALUES (51,'2021-12-31',6,6,24);
INSERT INTO custOrder VALUES (52,'2022-01-10',1,7,27);
INSERT INTO custOrder VALUES (53,'2022-01-24',10,2,11);
INSERT INTO custOrder VALUES (54,'2022-01-25',10,8,14);
INSERT INTO custOrder VALUES (55,'2022-01-29',2,1,17);
INSERT INTO custOrder VALUES (56,'2022-02-05',5,6,30);
INSERT INTO custOrder VALUES (57,'2022-02-12',2,11,3);
INSERT INTO custOrder VALUES (58,'2022-02-25',10,8,20);
INSERT INTO custOrder VALUES (59,'2022-03-10',2,9,23);
INSERT INTO custOrder VALUES (60,'2022-04-03',6,5,6);
INSERT INTO custOrder VALUES (61,'2022-04-04',7,4,9);
INSERT INTO custOrder VALUES (62,'2022-04-05',3,2,26);
INSERT INTO custOrder VALUES (63,'2022-04-25',1,1,29);
INSERT INTO custOrder VALUES (64,'2022-05-13',4,6,12);
INSERT INTO custOrder VALUES (65,'2022-05-16',1,1,2);
INSERT INTO custOrder VALUES (66,'2022-06-27',5,1,5);
INSERT INTO custOrder VALUES (67,'2022-09-06',1,11,15);
INSERT INTO custOrder VALUES (68,'2022-09-24',5,9,8);
INSERT INTO custOrder VALUES (69,'2022-09-28',9,6,18);
INSERT INTO custOrder VALUES (70,'2022-10-09',8,9,11);
INSERT INTO custOrder VALUES (71,'2022-10-18',4,1,14);
INSERT INTO custOrder VALUES (72,'2022-10-23',3,7,21);
INSERT INTO custOrder VALUES (73,'2023-01-30',6,6,24);
INSERT INTO custOrder VALUES (74,'2023-01-31',2,4,27);
INSERT INTO custOrder VALUES (75,'2023-02-03',2,8,17);
INSERT INTO custOrder VALUES (76,'2023-02-05',6,3,20);
INSERT INTO custOrder VALUES (77,'2023-02-06',3,8,23);
INSERT INTO custOrder VALUES (78,'2023-02-11',6,7,3);
INSERT INTO custOrder VALUES (79,'2023-02-12',3,1,26);
INSERT INTO custOrder VALUES (80,'2023-03-09',5,5,6);
INSERT INTO custOrder VALUES (81,'2023-05-05',7,9,29);
INSERT INTO custOrder VALUES (82,'2023-05-09',6,9,2);
INSERT INTO custOrder VALUES (83,'2023-05-09',7,6,9);
INSERT INTO custOrder VALUES (84,'2023-05-27',8,4,12);
INSERT INTO custOrder VALUES (85,'2023-06-06',5,6,15);
INSERT INTO custOrder VALUES (86,'2023-06-19',9,2,5);
INSERT INTO custOrder VALUES (87,'2023-07-16',9,1,8);
INSERT INTO custOrder VALUES (88,'2023-08-25',2,2,11);
INSERT INTO custOrder VALUES (89,'2023-08-25',2,6,18);
INSERT INTO custOrder VALUES (90,'2023-09-13',3,3,14);
INSERT INTO custOrder VALUES (91,'2023-09-18',6,7,21);
INSERT INTO custOrder VALUES (92,'2023-09-20',5,9,17);
INSERT INTO custOrder VALUES (93,'2023-09-22',7,9,20);
INSERT INTO custOrder VALUES (94,'2023-10-20',7,10,24);
INSERT INTO custOrder VALUES (95,'2023-10-22',6,6,27);
INSERT INTO custOrder VALUES (96,'2023-10-29',1,8,23);
INSERT INTO custOrder VALUES (97,'2023-11-15',6,9,26);
INSERT INTO custOrder VALUES (98,'2023-11-29',8,9,29);
INSERT INTO custOrder VALUES (99,'2023-12-19',9,1,2);
INSERT INTO custOrder VALUES (100,'2023-12-30',5,2,5);
