use cdac_new;
-- 1.Write a query to display the first day of the month (in datetime format) three months before the current month.
select date_add(last_day(date_sub(curdate(),interval 4 month)),interval 1 day);

-- 2.Write a query to display the last day of the month (in datetime format) three months before the current month.
select last_day(date_sub(curdate(),interval 3 month));

-- 3.Write a query to get the distinct Mondays from hire_date in employees tables.
select distinct hire_date from employees where dayofweek(hire_date)=2;

-- 4.Write a query to get the first day of the current year.

select  makedate(extract(year from sysdate()),1);

-- makedate(year,day)=> makedate(2023,01)

-- 5.Write a query to get the last day of the current year. makedate(2023,365)

select  makedate(extract(year from sysdate()),365);

-- 6. Write a query to calculate the age in year.

select FLOOR(datediff(sysdate(),'1999-06-19')/365) AS age_in_years;

-- 7.Write a query to get the current date in the following format. 
-- Sample date : 2014-09-04
-- Output : September 4, 2014

select date_format('2014-09-04', '%M %e, %Y') as formatted_date;

-- 8.Write a query to get the current date in Thursday September 2014 format.

select curdate()as date,date_format(curdate(), '%W %M %Y') as formatted_date;

-- 9. Write a query to extract the year from the current date.
select  extract(year from curdate());

-- 10.Write a query to get the DATE value from a given day (number in N). 
-- Sample days: 730677
-- Output : 2000-07-11
SELECT DATE_ADD('0000-01-01', INTERVAL 730677 DAY);


-- 11. Write a query to get the firstname, lastname who joined in the month of June.

select * from employees;
select first_name, last_name from employees where month(hire_date)=6 ;

-- 12. Write a query to get the years in which more than 10 employees joined.
SELECT DISTINCT YEAR(hire_date) AS year FROM employees WHERE (SELECT COUNT(*) FROM employees e WHERE YEAR(e.hire_date) = YEAR(employees.hire_date)) > 10;

