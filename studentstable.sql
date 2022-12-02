	create table students(
		id serial primary key, 
		name varchar, 
		surname varchar, 
		specialization varchar, 
		course varchar
	);
	
	insert into students(name, surname, specialization, course) 
	values('Andrew', 'Howard', 'IT', 3), 
		  ('Harry', 'Maguire', 'Engineering', 4), 
		  ('John', 'Wick', 'Economic', 1); 
		  
		  select * from students