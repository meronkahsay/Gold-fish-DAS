# Gold-fish-DAS
A database called data_class was created to store information on children who are malnourished and to track their improvement after thay are given enough food and good health care.
A schema malnutrition was created and different tables were created under this schema to help keep track of the children and know their status and find out if they are improving or not.
The tables include: child_detail, parent_detail, progress_detail,relationship_detail and support detailtable.
Information was recored into the table monthly for tracking purposes.
All the tables are connected to one another using foreign keys and all the data in them is relevant to measure the success the of the stakeholder who is suppliying the food and providing resources for healthcare.
The child table has facts about the child like the child name, id,gender and date of birth. For the parent, the information includes the name ,contact information and gender. 
In the progress table, we have the child's height and weight before support was given and it was updated every month in order to measure the progress. It has the progress id and child id which references from the child detail table. It also has the tracking date for each child.
In the relationship table we have the relationship id, child id and parent id both referencing their tables respectively. We also have a column  where the relationship is explained; between the child and the parent.
In the support detail, we have the support id, the different types of support received and how frequently they were received. We also have the child id so we know which child received this support. 
