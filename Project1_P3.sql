
use [School Management];

create table Students(

[Student id] int primary key,
[Student name] nvarchar(20) not null,
Age int not null ,
[Blood group] nvarchar(5) not null,
[Father's Name] nvarchar(20),
[Mother's Name] nvarchar(20),
Grade int FOREIGN KEY REFERENCES class(Grade)
);

insert into Students 
values (1,'Aishwarya',12,'O+ve','Rangan','Leela',7);

insert into Students 
values (2,'Ajay',13,'A+ve','Bala','Devi',8);

insert into Students 
values (3,'balakumar',15 ,'AB-ve','Sathish','Binodini',10);

insert into Students 
values (4,'Ajith',14,'O+ve','Dharsan','Priya',9);


create table Subjects(

[Subject Id] int primary key,
[Subject name] nvarchar(20) not null,

);

insert into Subjects 
values (112,'Mathematics');

insert into Subjects 
values (113,'Social Science');

insert into Subjects 
values (114,'English');

insert into Subjects 
values (115,'Science');

create table class (

Grade int primary key,
ClassRoom int
);
insert into  Class
values (7, 201);

insert into [Class]
values (8, 206);

insert into Class
values (9,207);

insert into Class 
values (10,209);


alter table class
add primary key (Grade);

ALTER TABLE class
ALTER COLUMN Grade int NOT NULL;

ALTER TABLE Subjects
ALTER COLUMN [Subject Id] int NOT NULL;

--Index creation

CREATE UNIQUE NONCLUSTERED INDEX [IDX_student id] ON [dbo].[Students]
(
	[Student id] ASC
)
