CREATE TABLE DelOrder
(Order# INT NOT NULL,
PRIMARY KEY (Order#),
FOREIGN KEY (Order#)
REFERENCES custOrder
ON DELETE CASCADE);

INSERT INTO DelOrder VALUES (4);
INSERT INTO DelOrder VALUES (5);
INSERT INTO DelOrder VALUES (7);
INSERT INTO DelOrder VALUES (9);
INSERT INTO DelOrder VALUES (10);
INSERT INTO DelOrder VALUES (11);
INSERT INTO DelOrder VALUES (14);
INSERT INTO DelOrder VALUES (15);
INSERT INTO DelOrder VALUES (16);
INSERT INTO DelOrder VALUES (18);
INSERT INTO DelOrder VALUES (19);
INSERT INTO DelOrder VALUES (24);
INSERT INTO DelOrder VALUES (25);
INSERT INTO DelOrder VALUES (26);
INSERT INTO DelOrder VALUES (30);
INSERT INTO DelOrder VALUES (40);
INSERT INTO DelOrder VALUES (41);
INSERT INTO DelOrder VALUES (42);
INSERT INTO DelOrder VALUES (44);
INSERT INTO DelOrder VALUES (45);
INSERT INTO DelOrder VALUES (46);
INSERT INTO DelOrder VALUES (47);
INSERT INTO DelOrder VALUES (48);
INSERT INTO DelOrder VALUES (53);
INSERT INTO DelOrder VALUES (54);
INSERT INTO DelOrder VALUES (55);
INSERT INTO DelOrder VALUES (58);
INSERT INTO DelOrder VALUES (59);
INSERT INTO DelOrder VALUES (62);
INSERT INTO DelOrder VALUES (63);
INSERT INTO DelOrder VALUES (65);
INSERT INTO DelOrder VALUES (66);
INSERT INTO DelOrder VALUES (68);
INSERT INTO DelOrder VALUES (70);
INSERT INTO DelOrder VALUES (71);
INSERT INTO DelOrder VALUES (75);
INSERT INTO DelOrder VALUES (76);
INSERT INTO DelOrder VALUES (77);
INSERT INTO DelOrder VALUES (79);
INSERT INTO DelOrder VALUES (81);
INSERT INTO DelOrder VALUES (82);
INSERT INTO DelOrder VALUES (86);
INSERT INTO DelOrder VALUES (87);
INSERT INTO DelOrder VALUES (88);
INSERT INTO DelOrder VALUES (90);
INSERT INTO DelOrder VALUES (92);
INSERT INTO DelOrder VALUES (93);
INSERT INTO DelOrder VALUES (96);
INSERT INTO DelOrder VALUES (97);
INSERT INTO DelOrder VALUES (98);
INSERT INTO DelOrder VALUES (99);
INSERT INTO DelOrder VALUES (100);
