CREATE TABLE Store(
Store# INT NOT NULL,
Building# INT NOT NULL,
Street VARCHAR2(50) NOT NULL,
Postcode VARCHAR2(11) NOT NULL,
Manager VARCHAR2(30),
Email VARCHAR2(30) NOT NULL,
Telephone VARCHAR2(15) NOT NULL,
PRIMARY KEY (Store#)
);

INSERT INTO Store VALUES (1,51,'Green Lane','EX63 5IM','Maya Stanley','MayaStanley@gmail.com','07839 036466');
INSERT INTO Store VALUES (2,1,'Victoria Street','CO82 5RB','Lucy Hartley','LucaH@gmail.com','07060 987482');
INSERT INTO Store VALUES (3,11,'Grove Road','WC42 6PC','Finley Sharp','FinleySharp@gmail.com','07737 072631');
INSERT INTO Store VALUES (4,56,'North Street','N72 7WD','Victoria Stanley','ViccyStan94@gmail.com','07074 220491');
INSERT INTO Store VALUES (5,99,'York Road','HG61 5QU','Olivia Walters','LivWalters@gmail.com','07820 713079');
INSERT INTO Store VALUES (6,17,'Park Road','KT31 3AG','Joe Wilkins','JoeyW@gmail.com','07733 021 290');
INSERT INTO Store VALUES (7,28,'New Road','NN0 7NC','Charlie Humphreys','CharlieHumph@live.com','07955 539327');
INSERT INTO Store VALUES (8,89,'Stanley Road','SK19 0NM','Laura Randall','laurarandall@live.com','07042 776846');
INSERT INTO Store VALUES (9,32,'Park Avenue','NN22 7AB','Noah Newman','newnoah@gmail.com','07071 799558');
INSERT INTO Store VALUES (10,40,'The Avenue','SA46 6UR','Daisy Hughes','daisyhughes@gmail.com','07072 097672');
