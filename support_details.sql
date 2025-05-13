
CREATE TABLE malnutrition.support_detail (
	support_id varchar(5) NOT NULL,
	progress_id varchar(5) references progress_detail (progress_id) 
	type_of_support varchar(50) NULL,
	notes varchar(130) NULL,
	CONSTRAINT support_detail_pkey PRIMARY KEY (support_id)
);
INSERT INTO malnutrition.support_detail (support_id,progress_id,type_of_support,notes) VALUE
	 ('s01','pp01','supplement','vitamin'),
	 ('s02','pp02','feeding','3meal/day'),
	 ('s03','pp01','medical','checkup costs'),
	 ('s04','pp05','supplement','4meals/day'),
	 ('s05','pp05','feeding','3meal/day'),
	 ('s06','pp06','supplement','checkup costs'),
	 ('s07','pp07','feeding','4meals/day'),
	 ('s08','pp08','supplement','3meal/day'),
	 ('s09','pp08','medical','checkup costs'),
	 ('s10','pp09','supplement','4meals/day');
INSERT INTO malnutrition.support_detail (support_id,progress_id,type_of_support,notes) VALUES
	 ('s11','pp10','feeding','4meals/day'),
	 ('s12','pp11','feeding','3meal/day'),
	 ('s13','pp12','medical','checkup costs'),
	 ('s14','pp13','feeding','4meals/day'),
	 ('s15','pp14','medical','3 meals/day');
	 
select count(*) as childres_with_multiple_meals
from malnutrition.support_detail where notes like '%3meals/day%' or notes like  '%4meals/day%';