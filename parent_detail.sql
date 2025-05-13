CREATE SCHEMA malnutrition;
CREATE Table malnutrition.parent_detail(
    parent_id VARCHAR(6) PRIMARY KEY,
   parent_name VARCHAR(100)NOT NULL,
   contact_information VARCHAR(10) NOT NULL,
);
INSERT INTO malnutrition.parent_detail (parent_id,parent_name,contact_information) VALUES
	 ('p01','Kamau','0734261890'),
	 ('p02','Mukami','0715948030'),
	 ('P03','Jane','0782836452'),
	 ('P04','James','0782936452'),
	 ('p05','Muthoni','0715958030'),
	 ('p06','Esther','0715678231'),
	 ('p07','Mildred','0742261800'),
	 ('p08','Karen','0734122890'),
	 ('p09','Lynn','0734667890'),
	 ('p10','Bosibori','0734123890');
INSERT INTO malnutrition.parent_detail (parent_id,parent_name,contact_information) VALUES
	 ('p11','Matt','0734261890'),
	 ('p12','Apondi','0753426758'),
	 ('p13','Eric','0745677658'),
	 ('p14','Brian','0745676758'),
	 ('p15','Judy','0745634345');


SELECT COUNT(*) AS parent_name_count
FROM malnutrition.parent_detail
WHERE parent_name LIKE 'k%' OR parent_name LIKE 'K%';



