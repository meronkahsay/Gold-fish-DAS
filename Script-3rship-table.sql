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
('R02','C02','P02','mother'),
('R03','C03','P03','mother'),
('R04','C04','P04','father'),
('R05','C05','P05','mother'),
('R06','C06','P06','mother'),
('R07','C07','P07','mother'),
('R08','C08','P08','mother'),
('R09','C09','P09','mother'),
('R10','C10','P10','mother'),
('R11','C11','P11','father'),
('R12','C12','P12','mother'),
('R13','C13','P13','father'),
('R14','C14','P14','father'),
('R15','C15','P15','mother');