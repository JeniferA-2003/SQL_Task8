create table student1(
id int auto_increment primary key,
name varchar (100),
CGPA decimal(10,2)
);
insert into student1 values(1,"aruna",9.0);
insert into student1 values(2,"babu",8.9);
insert into student1 values(3,"chithara",7.49);
insert into student1 values(4,"joy",8.0);

/*procedure*/
Delimiter $$
create procedure addstudent(
in name varchar(100),
in CGPA decimal(10,2)
)
Begin 
insert into student1(name,CGAP)
values(name,CGPA);
end$$
Delimiter ;

call addstudent("joy",8.0);

/*functions*/
Delimiter $$
create function getoverallCGPA (
CGPA decimal(10,2)
)
returns decimal (10,2)
deterministic
begin 
return CGPA *12;
END $$
delimiter ;

select getoverallCGPA(9.0) as all_CGPA;

