use cdac_new;

-- Q1. From table salesman,create a view for those sales people who belong to the city of New York.
create view salesview as select salesman_id, name, city from salesman where city='New York';
select * from salesview;
-- Q2. From Salesman table,create a view to display  the salespeople whose commission is more than 0.13
create view salesview2 as select salesman_id, name, city ,commission from salesman where commission>0.13;
select * from salesview2;

-- Q3. From table Customer,create a view that counts the number of customers in each grade.
create view customerview as select count(customer_id), grade from customer group by grade;  
select * from customerview;

-- Q4. From table Orders,create a view to count the number of unique customers, compute the average and the total purchase amount of customer orders by each date.
create view orderview as select  count(distinct(customer_id)),ord_date,avg(purch_amt),sum(purch_amt) from orders group by ord_date order by ord_date;
select * from orderview;

-- Q5. Create an index on 'custcity' column of the table 'customer'.
create index custcity on customer(city);

-- Q6.Create an index on combination of 'custcity' and 'custname' columns of the table 'customer'.
create index custcityname on customer(city, cust_name);

-- Q7.Apply the autoincrement clause on student table.
create table  student( id int auto_increment primary key, first_name varchar(20), last_name varchar(20), age int);
insert into student(first_name,last_name,age) values('sanjana','kumbhar',25),('rishabh','singh',23),('akarsh','singh',27);
select * from student;

-- Q8.From tables Salesman and Customer ,write a SQL query to find all salespeople and customers located in the city of London.(Use set operator).
select  salesman_id as id,name ,city  from salesman where city='London' UNION
select customer_id as id,cust_name as name,city from customer where city='London';

-- Q9.From tables Orders and Customer,write a SQL query to find all those salespeople and customers who are involved in the inventory management system. Return salesperson ID, customer ID.(Use set operator).


-- Q10. WAQ to display fourth highest salary using LIMIT clause.
