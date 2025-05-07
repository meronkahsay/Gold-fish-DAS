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
