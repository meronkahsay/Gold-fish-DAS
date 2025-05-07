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

create table malnutrition.relationship_detail(
relationship_id VARCHAR(5)primary key,
child_id VARCHAR(5),
parent_id VARCHAR(6),
relationship VARCHAR (10)

constraint child_fk foreign key (child_id) references child_detail (child_id)on delete set null, 

constraint parent_fk foreign key (parent_id) references parent_detail (parent_id)on delete set null 


);

insert into malnutrition.relationship_detail(relationship_id,child_id,parent_id,relationship)
values 
('R01','C01','P01','father'),
('R02','C01','P02','mother'),
('R03','C02','P03','mother'),
('R04','C02','P04','father'),
('R05','C03','P05','mother'),
('R06','C04','P06','mother'),
('R07','C05','P07','mother'),
('R08','C06','P08','mother'),
('R09','C07','P09','mother'),
('R10','C08','P10','mother'),
('R11','C09','P11','father'),
('R12','C10','P12','mother'),
('R13','C11','P13','father'),
('R14','C12','P14','father'),
('R15','C13','P15','mother');
