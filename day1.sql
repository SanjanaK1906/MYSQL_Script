SHOW DATABASES;
create database cdac;
SHOW DATABASES;
use cdac;
show tables;
create table EMP(empno int, name varchar(20), sal decimal(14,2), deptno int);
describe emp;
alter table emp add mgr_id int;
alter table emp modify sal int;
alter table emp modify name varchar(40);
alter table emp rename column mgr_id to mgr;
alter table emp drop column mgr;
rename table emp to employee;
describe employee;
select * from employee;
insert into employee(empno,name,sal,deptno) values(1,"sam",2400,11);
insert into employee(empno,name,sal,deptno) values(2,"tam",2200,12),(3,"fam",2100,11);