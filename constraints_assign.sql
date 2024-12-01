use cdac_new;
-- create table Salesman - salesman_id primary key
create table Salesman (salesman_id int not null unique ,name varchar(10), city varchar(10), commission decimal(4,2));

-- customer -customer id primary key     salesmanid foreign key

create table customer (customer_id int not null unique, cust_name varchar(20), city varchar(10), grade int,      salesman_id int, primary key(customer_id), foreign key(customer_id) references customer (customer_id));

-- orders -orderno  primary key      customer_id foreign key
create table orders (ord_no int not null unique, purch_amt decimal (7,2), ord_date date , customer_id  int,  salesman_id int, primary key(ord_no), foreign key(customer_id) references customer (customer_id));

-- Create the tables and populate data accordingly.
insert into Salesman (salesman_id,name, city, commission) values
(5001,'James Hoog',  'New York', 0.15),
(5002,'Nail Knite',  'Paris'  ,     0.13),
(5005,'Pit Alex',    'London' ,     0.11),
(5006,'Mc Lyon' ,    'Paris'  ,     0.14),
(5003,'LausonHen' , 'San Jose' ,   0.12),
(5007,'Paul Adam' ,  'Rome' ,       0.13);


insert into customer (customer_id,cust_name,city,grade,salesman_id) values
(3002 ,        'Nick Rimando',  'New York'  ,  100     ,    5001),
(3005 ,        'Graham Zusi',   'California',  200     ,    5002),
(3001 ,        'Brad Guzan' ,   'London'  ,    100    ,     5005),
(3004  ,       'Fabian Johns' , 'Paris'  ,     300    ,     5006),
(3007  ,       'Brad Davis' ,   'New York' ,   200    ,     5001),
(3009  ,       'Geoff Camero'  ,'Berlin'  ,    100     ,    5003),
(3008  ,      'Julian Green',  'London'    ,  300     ,    5002),
(3003  ,       'Jozy Altidor',  'Moncow'   ,   200    ,     5007);



insert into orders (ord_no, purch_amt, ord_date , customer_id,  salesman_id) values
(70001,       150.5   ,    '2012-10-05' , 3005   ,      5002),
(70009 ,      270.65  ,    '2012-09-10' , 3001  ,       5005),
(70002 ,      65.26   ,    '2012-10-05' , 3002  ,       5001),
(70004 ,      110.5   ,    '2012-08-17' , 3009   ,      5003),
(70007 ,      948.5   ,    '2012-09-10',  3005   ,      5002),
(70005 ,      2400.6  ,    '2012-07-27',  3007   ,      5001),
(70008 ,      5760    ,    '2012-09-10',  3002   ,      5001),
(70010 ,      1983.43  ,   '2012-10-10',  3004   ,      5006),
(70003 ,      2480.4   ,  '2012-10-10' , 3009    ,     5003),
(70012 ,      250.45  ,   '2012-06-27' , 3008   ,     5002),
(70011 ,      75.29    ,   '2012-08-17',  3003   ,      5007),
(70013 ,      3045.6  ,    '2012-04-25',  3002   ,      5001);

select * from customer;
select * from salesman;
select * from orders;
