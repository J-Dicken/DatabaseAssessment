CREATE TABLE ColStaff
(Employee# NUMBER NOT NULL,
Department VARCHAR2(50),
PRIMARY KEY (Employee#),
FOREIGN KEY (Employee#)
REFERENCES Employee
ON DELETE CASCADE);

INSERT INTO ColStaff VALUES (3,'furniture');
INSERT INTO ColStaff VALUES (6,'lighting');
INSERT INTO ColStaff VALUES (9,'furniture');
INSERT INTO ColStaff VALUES (12,'beds');
INSERT INTO ColStaff VALUES (15,'textiles');
INSERT INTO ColStaff VALUES (18,'beds');
INSERT INTO ColStaff VALUES (21,'textiles');
INSERT INTO ColStaff VALUES (24,'lighting');
INSERT INTO ColStaff VALUES (27,'furniture');
INSERT INTO ColStaff VALUES (30,'lighting');
