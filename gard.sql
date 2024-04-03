create database graduates ;
    use graduates ;
			 create table gard  (
					g_id int not null  primary key identity (1,1) ,
					g_name varchar(50) ,
					grational_year  int ,
					g_type char(5) ,
					g_age int  ,
					g_email varchar (50),
					g_national_numder  char (14) unique ,
					g_appreciation varchar (50) ,
					g_address varchar (50) ,
					);
					 create table g_softskills (
							g_id int  not null  identity (1,1),
							softskills varchar(50) ,
							primary key (g_id  ,softskills) ,
							foreign key (g_id) references gard ,
							);
					 create table g_hardskills (
							g_id int  not null  identity (1,1) ,
							hardskills varchar(50) ,
							primary key (g_id  , hardskills ),
							foreign key (g_id) references gard ,
							);
					 create table g_language (
							g_id int  not null  identity (1,1) ,
							g_language varchar(50)  ,
							primary key (g_id  ,g_language),
							foreign key (g_id) references gard ,
							);
					 create table g_phone_number (
							g_id int  not null  identity (1,1),
							phone_number char(11) unique ,
							primary key (g_id  ,phone_number),
							foreign key (g_id) references gard ,
							);
					  create table academic_degree (
							g_id int  not null  identity (1,1),
							degree char(11)  ,
							primary key (g_id  ,degree),
							foreign key (g_id) references gard ,
							);
			 create table problem (
		 			g_id int not null  identity (1,1) ,
					p_id int not null  identity (1,1),
					p_name varchar (50),
					p_cause varchar (50),
					primary key (g_id  ,p_id ),
					foreign key (g_id) references gard ,
					);
	create table face (
 		g_id int not null  identity (1,1) ,
 		p_id int not null  identity (1,1),
		f_data  date ,
		primary key (g_id  ,p_id ),
		foreign key (g_id) references gard ,
		foreign key (p_id) references problem ,
 		);
			 create table jop (
		 			j_id int  not null  primary key identity (1,1),
					j_name varchar (50),
					salary  int ,
					w_id int  not null  identity (1,1),
					foreign key (w_id) references workplace (w_id)
					);
					 create table job_required_siklls(
							j_id int not null  identity (1,1),
							required_siklls varchar (50),
							primary key (j_id  ,required_siklls ),
							);
	create table work(
		j_id int not null  identity (1,1) ,
		g_id int not null  identity (1,1),
		w_data date ,
		primary key (j_id , g_id ),
	    );
			 create table workplace (
			 		w_id int not null  primary key identity (1,1) ,
					w_name varchar (50),
					w_address varchar (50),
					w_email varchar (50),
					); 
					create table wp_branch (
							w_id int not null  identity (1,1),
							branch varchar (50) ,
							primary key (w_id  ,branch ),
					        );
                     create table wp_phone_number (
					        w_id int not null  identity (1,1) ,
							w_phone char (11) unique ,
							primary key (w_id  ,w_phone ),
							);






