-- 1.Write a query to list the number of jobs available in the employees table.
select * from employees;
select count(job_id) from employees;

-- 2. Write a query to get the total salaries payable to employees.
select sum(salary) as totalsalary from employees;

-- 3. Write a query to get the minimum salary from employees table.
select min(salary) from employees;

-- 4. Write a query to get the maximum salary of an employee working as a Programmer.
select * from jobs;
select job_title,max_salary from jobs where (job_title='Programmer');

-- 5. Write a query to get the average salary and number of employees working the department 9.
select avg(salary),count(employee_id) from employees where(department_id=9);

-- 6. Write a query to get the highest, lowest, sum, and average salary of all employees.
select max(salary),min(salary),sum(salary),avg(salary) from employees;

-- 7. Write a query to get the number of employees with the same job.
select count(employee_id), job_id from employees group by job_id;

-- 8. Write a query to get the difference between the highest and lowest salaries.
select max(salary),min(salary), (max(salary)-min(salary)) as diffsalary from employees;

-- 9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.

select manager_id,min(salary) from employees group by manager_id;

-- 10. Write a query to get the department ID and the total salary payable in each department.
select department_id ,sum(salary) from employees group by(department_id);

-- 11. Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 9 only.
select max(salary),min(salary),sum(salary),avg(salary),job_id,department_id from employees  where(department_id=9) group by job_id;

-- 12.Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000
select max(salary),job_id from employees  group by job_id having  max(salary)>=4000;

-- 13.Write a query to get the average salary for all departments employing more than 10 employees. 
select avg(salary), department_id from employees group by department_id  having count(employee_id)>10;