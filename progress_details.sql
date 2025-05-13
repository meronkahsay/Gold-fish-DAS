
CREATE Table malnutrition.progress_detail(
	progress_id VARCHAR(5) PRIMARY KEY,
	child_id VARCHAR(5) REFERENCES malnutrition.child_detail(child_id),
	height DECIMAL(5,2) NOT NULL,
	weight DECIMAL(5,2) NOT NULL,
	tracking_date DATE NOT NULL
);
INSERT INTO malnutrition.progress_detail (progress_id,child_id,height,weight,tracking_date) VALUES
	 ('PP05','C05',43.00,19.00,'2026-01-01'),
	 ('PP06','C06',40.00,20.00,'2024-10-23'),
	 ('PP07','C07',39.00,23.70,'2023-11-14'),
	 ('PP08','C08',32.00,12.45,'2023-12-23'),
	 ('PP09','C09',29.00,26.00,'2022-09-07'),
	 ('PP10','C10',30.00,23.40,'2021-06-27'),
	 ('PP11','C11',33.00,18.90,'2023-12-17'),
	 ('PP12','C12',34.00,20.80,'2022-04-09'),
	 ('PP13','C13',43.00,18.32,'2022-02-07'),
	 ('PP14','C14',41.00,14.43,'2021-11-04');
INSERT INTO malnutrition.progress_detail (progress_id,child_id,height,weight,tracking_date) VALUES
	 ('PP15','C15',29.00,12.50,'2021-10-05'),
	 ('PP01','C01',23.00,11.43,'2021-03-24'),
	 ('PP02','C02',22.00,10.43,'2022-05-14'),
	 ('PP03','C03',21.00,15.43,'2023-10-04'),
	 ('PP04','C05',20.00,13.43,'2024-11-28');
