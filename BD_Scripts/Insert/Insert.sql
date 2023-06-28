Use TakeCare;
Insert into country Values (0,'Brazil');
Insert into State values (0, 'São Paulo', (select last_insert_id()));  
Insert into City values (0, 'São Paulo', (select last_insert_id()));