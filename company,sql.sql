--���� ����� ����� ������ ���� ���� ����� 
create database tourism_company ;
--�� ������� ����� �������� 
use tourism_company;
--�� ����� ���� ���� ���� ���� ��� ������  ����� � ������� � ����� ������ � ������ ���������� � ��� ������ � ����� � ������ ���������� 
create table client (
c_id int ,
b_id int ,
c_name varchar (50),
c_age int ,
c_email char(20),
marital_status varchar(50),
notional_number int ,
c_address varchar (50),
primary key (c_id , b_id)
);
--�� ��� ���� ������ ���� ������� ����� �� ����� ��� ��� ������
 create table c_phone_number (
 c_id int ,
 b_id int ,
 c_phone char (11),
 primary key  (c_id , b_id)
 );
 -- ��� ���� ���� ��� ����� ��� ��� ����� � ����� ����� � ��� ����� � ����� ����� 
 create table branch (
 b_id int primary key ,
 b_name varchar (50),
 b_address varchar (50),
 b_number int ,
 b_email varchar (50),
 );
 --��� ���� ������ ����� ���� �� ����� ��� ��� ������ 
 create  table b_phone_number(
 b_id int ,
 p_id int ,
 pb_phone char (11),
 primary key (b_id , p_id )
 ); 
 --��� ���� ���� ���� ����� ���  ��� ������ � ����� ������ � ��� ������ � ��� ������ � ���� ������ � ��� ������ 
 create table journey  (
 j_id int primary key ,
 j_name varchar (50),
 j_time time ,
 j_type varchar  (50) ,
 j_duration char(20),
 j_plase varchar (50),
 j_price char (20)
 ); 
 --��� ���� ������ ��� ������ ����� �� ���� ��� ������ 
create  table j_transportation (
j_id int ,
jt_id int ,
transportation varchar (50),
primary key (J_id , Jt_id )
);
--��� ���� ���� ��� ��� ������� ��� ������ � ������ �� ����� ��� ����� ����� ������ ��� ������� ������� ����� ������ � ���� ������ ���� �������
create table record (
j_id int ,
c_id int ,
r_date date ,
primary key (j_id ,c_id)
);
--����� �������� �������� ������� 
alter table client 
add foreign key (b_id) references branch (b_id);

alter table c_phone_number 
add foreign key (b_id ) references branch (b_id),
foreign key (c_id ) references client (c_id);

alter table b_phone_number 
add foreign key (b_id) references  branch (b_id);

alter table record 
add foreign key (c_id ) references client (c_id) ,
foreign key (J_id ) references journey  (j_id) ;

alter table record 
add foreign key (c_id ) references client (c_id) ;
alter table record 
foreign key (J_id ) references journey  (j_id) ;

alter table j_transportation
add foreign key (J_id ) references journey  (j_id)  ;




