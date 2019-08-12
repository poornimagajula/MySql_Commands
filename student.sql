create table trustinme.student_tbl (id int, name varchar(15), age int);

insert into trustinme.student_tbl (`name`,`age`) values("Tarun",24);

create table trustinme.student_mbl_tbl(mid int not null auto_increment, mobile varchar(12), id int not null, primary key(mid), foreign key(id) references student_tbl(id));

insert into trustinme.student_mbl_tbl (`mobile`,`id`) values("9949776904",2);

create table trustinme.student_lang_tbl(lid int not null auto_increment, lang varchar(30), id int not null,primary key(lid), foreign key(id) references trustinme.student_tbl(id));

create table trustinme.student_address_tbl (aid int not null auto_increment,street varchar(45), city varchar(45), state varchar(45), zipcode varchar(45), id int not null,primary key(aid), foreign key(id) references trustinme.student_tbl(id));

alter table trustinme.student_mbl_tbl change column mobile mobile varchar(30) not null;