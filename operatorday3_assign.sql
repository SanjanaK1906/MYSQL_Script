use cdac_new;

--  Display the details of those employees whose managers are from 101 to 110.Sort by manager in descending order.
select * from employees where manager_id between 101 and 110 order by manager_id desc;

--  Display details of those employees whose last names contains j or k or l.Sort the results in ascending order.
select * from employees where last_name like "%j%" or last_name like "%J%"  or last_name like "%K%" or last_name like "%k%" or last_name like "%L%" or last_name like "%l%" order by last_name asc;

-- Display the details of those employees whose job ids are 9,10,13,19  and that their managers are 101,102 and 103.
select * from employees where job_id in(9,10,13,19) and manager_id in(101,102,103);

-- Display details of those employees whose phone numbers are not null and that their employee ids are 105 or 106 or 107.
select * from employees where phone_number IS NOT NULL  and employee_id in(105,106,107);


-- 5. Display details of those employees whose hiredates are greater than 1st January 1991 and less than 31st Dec 1995.
select * from employees where hire_date > '1991-01-01' and  hire_date<'1995-12-31';

-- Display details of those employees whose emails are not existing.
select * from employees where email IS NULL;

-- Display details of those employees to find commission by taking 0.02 of salary whose salary are greater than 15000.
select *, (salary*0.02) as commission from employees where salary>15000;