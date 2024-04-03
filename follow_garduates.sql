--follow_graduatesÇæáÇ ÇäÔÇÁ ÞÇÚÏÉ ÈíäÇÊ ÈÇÓã 
create database follow_garduates ;
	--ÇÓÊÏÚÇÁ ÞÇÚÏÉ ÇáÈíÇäÇÊ 
	use follow_garduates ;
-- DDLÇäÔÇÁ ÇáÌÏÇæá ÈÇÓÊÎÏÇã ÇæÇãÑ 
	--ÇäÔÇÁ ÌÏæá  
	create table job (
		g_job varchar(50) not null  primary key,
		required_siklls varchar (50),
		);
			--ÇÏÎÇá ÈíÇäÇÊ ÏÇÎá ÌÏæá ÇáæÙíÝÉ 
			insert into job( g_job,required_siklls)
			values ('Accountant','calcution skills' );
			insert into job( g_job,required_siklls)
			values ('Data analyst','statistics & database skills' );
			insert into job( g_job,required_siklls)
			values (' Data scientist','computer skills ' );
			insert into job( g_job,required_siklls)
			values ('markting manager','markting skills' )
			;
	--
	create table workplace (
		g_workplace varchar (50)not null  primary key,
		w_address varchar (50),
		w_email varchar (50),
		); 
			--
			insert into workplace(g_workplace,w_address,w_email)
			values ('al noor contracting company ','saudi arabia','kjk@lklkl');
			insert into workplace(g_workplace,w_address,w_email)
			values ( 'bank of cairo','egypt','xzdsd@ljklk');
			insert into workplace(g_workplace,w_address,w_email)
			values ( 'code we company','egypt','kjoi@l87y');
			insert into workplace(g_workplace,w_address,w_email)
			values ('microsoft company ','united arab emirates','iujoo@kjlj')
			;
	--ÇäÔÇÁ ÌÏæá ÈÇÓã ÇáÎÑíÌ íÊãíÒ ÈÇáÕÝÇÊ ßæÏ ÇáÎÑíÌ æ ÇÓã ÇáÎÑíÌ æÓäÉ ÇáÊÎÑÌ æ äæÚ ÇáÎÑíÌ æ ÚãÑ ÇáÎÑíÌ æ Çíãíá ÇáÎÑíÌ æ ÇáÑÞã ÇáÞæãì æ ÇáÚäæÇä æÑÞã ÇáåÇÊÝ    
	create table gard  (
		g_id int not null  primary key identity (1,1) ,
		g_name varchar(50) not null  ,
		grational_year  int  not null ,
		g_job varchar(50),
		g_salary int ,
		g_workplace varchar(50) ,
		g_type varchar(50) ,
		g_age int  ,
		g_email varchar (50)   ,
		g_national_numder  char (14) not null   ,
		g_appreciation varchar (50) ,
		g_address varchar (50) ,
		g_phone_number char(11)  ,
		academic_degree varchar (50),
		foreign key (g_job) references job (g_job),
		foreign key (g_workplace) references workplace (g_workplace)
			);
			-- ÇÖÇÝÉ ÈíÇäÇÊ ÇáÎÑÌíä ÏÇÎá ÌÏæá ÇáÎÑíÌ
			insert into gard (  g_name ,grational_year ,g_job,g_salary,g_workplace,g_type,g_age,g_email, g_national_numder,g_appreciation,g_address,g_phone_number,academic_degree)
				values ('ahmed',2020 ,'Accountant', 6000 ,
					'al noor contracting company','male',23,
					'ee33sfdr@l;kl','76543234567898','80% very good' , 
					'mansoura','01087687435','bachelor of accounting');
			insert into gard ( g_name ,grational_year ,g_job,g_salary,g_workplace,g_type,g_age,g_email, g_national_numder,g_appreciation,g_address,g_phone_number,academic_degree)
				values ('omer',2021 ,'Accountant', 3000 , 'bank of cairo',
					'male',22,'eesfu8wwdr@l;rfkl','98765432341111','70%  good' , 'cairo',
					'01065387654','bachelor of accounting');
			insert into gard (  g_name ,grational_year ,g_job,g_salary,g_workplace,g_type,g_age,g_email, g_national_numder,g_appreciation,g_address,g_phone_number,academic_degree)
				values ('nada',2018 ,'Data analyst', 6000 , 'code we company','female',
					24,'eesfdr@l;kl','98000022334141','90% excellent' , 'cairo','01098387435',
					'bachelor of management information system');
			insert into gard ( g_name ,grational_year ,g_job,g_salary,g_workplace,g_type,g_age,g_email, g_national_numder,g_appreciation,g_address,g_phone_number,academic_degree)
				values ('haba',2016,'Data scientist', 12000 , 'microsoft company',
					'female',26,'ees55fdr@l;kl','88776655443399','95% excellent with first class honors' ,
					'mansoura','01065387435','bachelor of computer science');
			insert into gard ( g_name ,grational_year ,g_job,g_salary,g_workplace,g_type,g_age,g_email, g_national_numder,g_appreciation,g_address,g_phone_number,academic_degree)
				values ('noor',2021,'markting manager', 4000 , 'bank of cairo',
					'male',22,'eer4sfdr@l;ujjkl','88663322440000','79% very good' , 'mansoura',
					'01234387435','bachelor of business adminstration ')
					;
	-- 
	create table problem (
		p_id int  primary key not null identity (1,1) ,
		p_cause varchar (50),
		);
			--
			insert into problem (p_cause)
			values ('alienation');
			insert into problem (p_cause)
			values ('low salary');
	--
	create table face (
		g_id int  ,
		p_id int ,
		f_date  date ,
		primary key (g_id  , p_id ),
		);
		alter table face 
add foreign key (g_id ) references  gard  ,
foreign key (p_id) references problem ;
			--
			insert into face (p_id,f_date)
			values (1 ,1 ,'6/11/2022');
			insert into face (p_id,f_date)
			values (2 ,2 ,'5/12/2022');
			insert into face (p_id ,f_date)
			values (3 ,3 ,'7/12/2022');
			insert into face (p_id,f_date)
			values (4,4,'10/12/2022');
			insert into face (p_id,f_date)
			values (5,5,'10/12/2022')
			;
--DmLÇäÔÇÁ ÇáÕÝÇÊ ÇáãÔÊÞÉ æ ÇáÏæÇá ÈÇãÑ
	--
	select  g_name ,g_salary * 12 as annual_income
	from gard ;
	--
	select
	 min(g_salary) as the_lowest_salary ,
	 max(g_salary) as the_highest_salary ,
	 avg(g_salary) as average_salaries 
	from gard ;
	-- 
	select  g_name ,g_job,g_salary 
	from gard
	where g_salary >4000 ;
	--

	(select * from gard)
	union 
	(select * from job);

	 











































