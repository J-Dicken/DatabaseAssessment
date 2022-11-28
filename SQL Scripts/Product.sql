CREATE TABLE Product
(Product# INT NOT NULL,
Name VARCHAR2(25),
Category VARCHAR2(25),
Price VARCHAR2(5),
Description VARCHAR2(200),
Colour VARCHAR2(15),
Image VARCHAR2(100),
PRIMARY KEY (Product#));

INSERT INTO Product VALUES (1,'lång pojke','Furniture','30','Tall, wooden, shortbacked kitchen chair finished in black','Black','kitchenChairBlack');
INSERT INTO Product VALUES (2,'lång pojke','Furniture','30','Tall, wooden, shortbacked kitchen chair finished in blue','Blue','kitchenChairBlue');
INSERT INTO Product VALUES (3,'lång pojke','Furniture','30','Tall, wooden, shortbacked kitchen chair finished in red','Red','kitchenChairRed');
INSERT INTO Product VALUES (4,'ingen ryggpojke','Furniture','20','Wooden kitchen barstool finished in beige','Beige','kitchenStoolBeige');
INSERT INTO Product VALUES (5,'ingen ryggpojke','Furniture','20','Wooden kitchen barstool finished in black','Black','kitchenStoolBlack');
INSERT INTO Product VALUES (6,'ljus karl','Lighting','10','Classic bedside lamp with gold stand and white','Gold','lamp1');
INSERT INTO Product VALUES (7,'upplyst tjej','Lighting','10','Black metal desk lamp','Black','lamp2');
INSERT INTO Product VALUES (8,'sömnig sömn','Beds','190','Low sided, light grey double bed','Grey','bed1');
INSERT INTO Product VALUES (9,'sova länge','Beds','250','Dark grey double bed with large headboard','Grey','bed2');
INSERT INTO Product VALUES (10,'utvikt strumpa','Textiles','40','Circular, green textured rug','Green','rug1Green');
INSERT INTO Product VALUES (11,'utvikt strumpa','Textiles','40','Circular, beige textured rug','Beige','rug1Beige');
