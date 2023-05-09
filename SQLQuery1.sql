create database P231

drop database P231

create table Students(
Id int,
Firstname varchar(20),
LastName varchar(20),
Age tinyint,
Gender varchar(10),
Grade decimal(5,2)
)

alter table Students
drop column Grade

alter table Students
add Grade decimal(5,2)


create table Example(
Id int,
Name nvarchar(20))

drop table Example

truncate table Students

insert into Students 
values('1', 'Leyla', 'Quliyeva' , '25' , 'female', '80'),
('2', 'Nicat', 'Bayramov' , '30' , 'male', '80'),
('3', 'Nermin', 'Abbasova' , '21' , 'female', '80'),
('4', 'Samir', 'Babayev' , '24' , 'male', '80')

insert into Students(Gender,Id,Firstname,LastName,Grade,Age)
values('male','5','Faiq', 'Huseynov' , '100', '32' )

update Students
set Grade = 40
where Id = 3

truncate table Students

delete Students
where Grade<=50

select * from Students

select Id, Grade, Age from Students

select Id, Grade, Age 'Yas' from Students

select Id, Grade as Ortalama, Age 'Yas' from Students


select Firstname + ' ' +LastName as Fullname from Students

select* from Students
where Age>=30

select * from Students where Age between 21 and 26

select * from Students where Grade = 100 or Grade =80

select* from Students where Age =25  or Age = 30


select* from Students where Age in(25,30,24)