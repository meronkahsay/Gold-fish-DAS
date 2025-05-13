CREATE SCHEMA malnutrition;
CREATE Table malnutrition.child_detail(
	child_id VARCHAR(5) PRIMARY KEY,
	date_of_birth DATE NOT NULL,
	gender VARCHAR(10) NOT NULL,
	child_name VARCHAR(100) NOT NULL
);

INSERT INTO malnutrition.child_detail (child_id,date_of_birth,gender,child_name) VALUES
	 ('C01','2020-05-12','female','Mary'),
	 ('C02','2021-10-12','male','Gabriel'),
	 ('C03','2020-12-25','female','Jeff'),
	 ('C05','2021-11-11','female','Oprah'),
	 ('C07','2023-01-01','female','Mercy'),
	 ('C09','2022-05-08','male','Humprey'),
	 ('C10','2020-12-11','male','Godfrey'),
	 ('C11','2021-10-30','female','Vera'),
	 ('C13','2022-06-19','male','Michael'),
	 ('C14','2020-11-12','female','Mitchelle');
INSERT INTO malnutrition.child_detail (child_id,date_of_birth,gender,child_name) VALUES
	 ('C15','2021-11-10','female','Lynn'),
	 ('C04','2024-10-12','female','denver'),
	 ('C06','2024-10-21','female','Brenda'),
	 ('C08','2024-06-11','male','Joel'),
	 ('C12','2023-08-20','male','James');

SELECT COUNT (*) AS
children_below_1_year_10_months
from
malnutrition.child_detail
where age (current_date, date_of_birth ) < interval'1 year 10 months';

