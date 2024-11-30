use cdac;
create table Salesman(salesman_id int,sname varchar(20),city varchar(10),commission float);
insert into Salesman(salesman_id,sname,city,commission) values(5001, "James Hoog", "New York", 0.15),(5002,"Nail Knite", "Paris", 0.13),(5005, "Pit Alex", "London", 0.11),(5006 ,"Mc Lyon", "Paris", 0.14),(5003, "Lauson Hen", "San Jose", 0.12),(5007, "Paul Adam", "Rome", 0.13);
select * from Salesman;

create table Orders(ord_no int,purch_amt double(10,2),ord_date date,customer_id int, salesman_id int );
ALTER TABLE Orders MODIFY COLUMN purch_amt DECIMAL(10,2);
insert into Orders(ord_no,purch_amt,ord_date,customer_id,salesman_id) values(70001, 150.5, '2012-10-05', 3005 ,5002),(70009, 270.65, '2012-09-10', 3001, 5005),(70002, 65.26, '2012-10-05', 3002, 5001),(70004, 110.5, '2012-08-17', 3009, 5003),(70007, 948.5, '2012-09-10', 3005, 5002),(70005, 2400.6, '2012-07-27', 3007, 5001),(70008, 5760, '2012-09-10', 3002, 5001),(70010, 1983.43, '012-10-10', 3004, 5006),(70003, 2480.4, '2012-10-10', 3009, 5003),(70012, 250.45, '2012-06-27', 3008, 5002),(70011, 75.29, '2012-08-17', 3003, 5007),(70013, 3045.6, '2012-04-25', 3002, 5001);
select * from Orders;
create table customer(customer_id int,cust_name varchar(20),city varchar(10),grade int,salesman_id int);
insert into customer(customer_id,cust_name,city,grade,salesman_id) values(3002, "Nick Rimando", "New York",100, 5001),(3005, "Graham Zusi", "California", 200, 5002),(3001, "Brad Guzan", "London", 100, 5005),(3004, "Fabian Johns", "Paris", 300, 5006),(3007, "Brad Davis", "New York", 200, 5001),(3009, "Geoff Camero", "Berlin", 100, 5003),(3008, "Julian Green", "London", 300, 5002),(3003, "Jozy Altidor", "Moncow", 200, 5007);
select * from customer;

-- Q6.Display the customer_id, name,city ,grade from customer table.-- 

select customer_id,cust_name,city,grade from customer;

-- Display the details of orders and add 100 to purch_amt and then multiplied by 10 .Label thecolumn as incr_pur in capitals.

select *, (purch_amt+100)*10 as incr_pur  from orders;

-- Display the customer id,name whose salesman_id is 5001 from customer .Sort your results
-- by customer_id in descending order.
select customer_id,cust_customername from customer where salesman_id=5001 order by customer_id desc;









