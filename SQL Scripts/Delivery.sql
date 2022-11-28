CREATE TABLE Delivery
(Supplier# INT NOT NULL,
Order# INT NOT NULL,
Route# INT,
DeliveryDate VARCHAR2(12),
PRIMARY KEY(Supplier#, Order#),
FOREIGN KEY (Supplier#)
REFERENCES Supplier
ON DELETE CASCADE,
FOREIGN KEY(Order#)
REFERENCES custOrder
ON DELETE CASCADE);

INSERT INTO Delivery VALUES (1,4,1,'2020-04-13');
INSERT INTO Delivery VALUES (3,5,1,'2020-04-20');
INSERT INTO Delivery VALUES (2,7,1,'2020-05-15');
INSERT INTO Delivery VALUES (4,9,1,'2020-05-23');
INSERT INTO Delivery VALUES (2,10,1,'2020-06-03');
INSERT INTO Delivery VALUES (3,11,1,'2020-06-09');
INSERT INTO Delivery VALUES (3,14,1,'2020-08-04');
INSERT INTO Delivery VALUES (6,15,1,'2020-08-08');
INSERT INTO Delivery VALUES (1,16,1,'2020-08-19');
INSERT INTO Delivery VALUES (3,18,1,'2020-10-03');
INSERT INTO Delivery VALUES (1,19,1,'2020-10-07');
INSERT INTO Delivery VALUES (4,24,1,'2020-11-28');
INSERT INTO Delivery VALUES (5,25,1,'2020-12-05');
INSERT INTO Delivery VALUES (5,26,1,'2020-12-20');
INSERT INTO Delivery VALUES (4,30,1,'2021-02-09');
INSERT INTO Delivery VALUES (3,40,1,'2021-07-11');
INSERT INTO Delivery VALUES (2,41,1,'2021-07-22');
INSERT INTO Delivery VALUES (4,42,1,'2021-08-27');
INSERT INTO Delivery VALUES (2,44,1,'2021-09-03');
INSERT INTO Delivery VALUES (3,45,1,'2021-09-05');
INSERT INTO Delivery VALUES (1,46,1,'2021-09-06');
INSERT INTO Delivery VALUES (2,47,1,'2021-09-22');
INSERT INTO Delivery VALUES (4,48,1,'2021-10-10');
INSERT INTO Delivery VALUES (2,53,1,'2022-01-31');
INSERT INTO Delivery VALUES (5,54,1,'2022-02-01');
INSERT INTO Delivery VALUES (5,55,1,'2022-02-05');
INSERT INTO Delivery VALUES (3,58,1,'2022-03-04');
INSERT INTO Delivery VALUES (2,59,1,'2022-03-17');
INSERT INTO Delivery VALUES (4,62,1,'2022-04-12');
INSERT INTO Delivery VALUES (4,63,1,'2022-05-02');
INSERT INTO Delivery VALUES (1,65,1,'2022-05-23');
INSERT INTO Delivery VALUES (4,66,1,'2022-07-04');
INSERT INTO Delivery VALUES (4,68,1,'2022-10-01');
INSERT INTO Delivery VALUES (2,70,1,'2022-10-16');
INSERT INTO Delivery VALUES (6,71,1,'2022-10-25');
INSERT INTO Delivery VALUES (2,75,1,'2023-02-10');
INSERT INTO Delivery VALUES (5,76,1,'2023-02-12');
INSERT INTO Delivery VALUES (6,77,1,'2023-02-13');
INSERT INTO Delivery VALUES (1,79,1,'2023-02-19');
INSERT INTO Delivery VALUES (3,81,1,'2023-05-12');
INSERT INTO Delivery VALUES (1,82,1,'2023-05-16');
INSERT INTO Delivery VALUES (1,86,1,'2023-06-26');
INSERT INTO Delivery VALUES (2,87,1,'2023-07-23');
INSERT INTO Delivery VALUES (3,88,1,'2023-09-01');
INSERT INTO Delivery VALUES (4,90,1,'2023-09-20');
INSERT INTO Delivery VALUES (3,92,1,'2023-09-27');
INSERT INTO Delivery VALUES (6,93,1,'2023-09-29');
INSERT INTO Delivery VALUES (4,96,1,'2023-11-05');
INSERT INTO Delivery VALUES (5,97,1,'2023-11-22');
INSERT INTO Delivery VALUES (1,98,1,'2023-12-06');
INSERT INTO Delivery VALUES (5,99,1,'2023-12-26');
INSERT INTO Delivery VALUES (2,100,1,'2024-01-06');
