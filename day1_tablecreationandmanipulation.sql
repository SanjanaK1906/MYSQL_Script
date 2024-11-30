/* day1 classwork*/
/* WAQ to create a new table as DEPT with columns as deptno,dname,loc with appropiate datatypes.*/
use cdac;
create table DEPT(deptno int, dname varchar(10), loc varchar(20));
describe DEPT;
/*WAQ to populate the above table(DEPT)*/

insert into DEPT(deptno,dname,loc) values(10,"entc","pune"),(11,"cs","mumbai");
insert into DEPT(deptno,dname,loc) values(13,"it","pune"),(14,"mech","delhi");
select * from DEPT;

/* emp table*/

create table emp(eno int, ename varchar(10),dname varchar(10));
describe emp;

-- WAQ to add the following columns in EMP table-mgr int, comm decimal, email varchar, doj date

alter table emp add (mgr int, comm decimal(12,2),email varchar(22), doj date);

/*WAQ to modify the name of doj to hiredate in EMP table.*/

alter table emp rename column doj to hiredate;

/* WAQ to create a new table as locations with columns as locid,lname,country_id with appropiate datatypes.Populate the data.*/

create table locations(locid int,lname varchar(20),country_id int);
insert into  locations(locid,lname,country_id) values(1,"Antarctica",101),(2,"Brazil",076),(3,"India",356);
select * from locations;
