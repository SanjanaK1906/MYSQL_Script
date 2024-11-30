use cdac_new;
-- Display the name,salary,department,phone numbers of those employees whose phone numbers are same as that of 'Kochhar'.
select first_name,salary,department_id,phone_number from employees where phone_number=(select phone_number from employees where last_name="Kochhar");
 
 select* from employees;
-- 1. Write a query to display the name ( first name and last name ) for those employees who gets more salary than the employee whose ID is 206.
select first_name,last_name from employees where salary>(select salary from employees where employee_id=206);

-- 2. Write a query to display the name ( first name and last name ), salary, department id, job id for those employees who works in the same designation as the employee works whose id is 203.

select first_name,last_name,salary,department_id,job_id from employees where job_id=(select job_id from employees where employee_id=203);

-- 3.Write a query to display the name ( first name and last name ), salary, department id for those employees who earn such amount of salary which is the smallest salary of any of the departments.
--  select* from employees where department_id=9;
select first_name,last_name,salary,department_id from employees where salary in (select min(salary) from employees group by department_id);

-- 4. Write a query to display the employee id, employee name (first name and last name ) for all employees who earn more than the average salary.  
select employee_id, concat(first_name," ",last_name)as employee_name from employees where salary >= (select avg(salary) from employees);

-- 5. Write a query to display the employee name ( first name and last name ), employee id and salary of all employees who report to 'Pat'.
select* from employees;
select* from departments;
select concat(first_name," ",last_name)as employee_name , employee_id ,salary from employees where manager_id=(select employee_id from employees where first_name ='Pat'); 

-- 6.  Write a query to display the department number, name ( first name and last name ), job and department name for all employees in the Finance department.  
select concat(first_name," ",last_name)as employee_name ,salary,department_id,job_id from employees where department_id=(select department_id from departments where department_name='Finance');

-- 7. Write a query to display all the information of an employee whose salary and reporting person id is 3000 and 121 respectively.  
select * from employees where salary=3000 and manager_id=121;

-- 8. Display all the information of an employee whose id is any of the number 134, 159 and 183.
select * from employees where employee_id in(134,159,183);
-- 9.  Write a query to display all the information of the employees whose salary is within the range 1000 and 3000.

select * from employees where salary >=1000 and salary<=3000;

-- 10. Write a query to display all the information of the employees whose salary is within the range of smallest salary and 5000. 
select * from employees where salary >= (select min(salary) from employees) and salary <= 5000; 


-- 11. Write a query to display all the information of the employees who does not work in those departments where some employees works whose manager id within the range 100 and 200.
select * from employees where department_id not in(select department_id from employees where manager_id>=100 and manager_id<=200);

-- 12. Write a query to display all the information for those employees whose id is any id who earn the second highest salary.
select * from employees where salary  =(select max(salary) from employees where salary<(select max(salary)from employees));

-- 13. Write a query to display the employee name( first name and last name ) and hiredate for all employees in the same department as Neena. Exclude Neena.
select  concat(first_name," ",last_name) as emp_name, hire_date from employees where department_id=(select department_id from employees where first_name='Neena') and first_name !='Neena';

-- 14. Write a query to display the employee number and name( first name and last name ) for all employees who work in a department with any employee whose name contains a T. 
select  concat(first_name," ",last_name) as emp_name, employee_id from employees where department_id in (select department_id from employees where first_name LIKE '%T%' OR last_name LIKE '%T%');


-- 15. Write a query to display the employee number, name( first name and last name ), and salary for all employees who earn more than the average salary and who work in a department with any employee with a J in their name.
select  concat(first_name," ",last_name) as emp_name, employee_id,salary from employees where department_id in (select department_id from employees where first_name LIKE '%T%' OR last_name LIKE '%T%');

-- 16. Display the employee name( first name and last name ), employee id, and job title for all employees whose department location is Toronto.
select concat(e.first_name," ",e.last_name) as emp_name, e.employee_id ,j.job_title from employees e  join departments d on e.department_id = d.department_id join jobs j on e.job_id=j.job_id join locations l on  d.location_id=l.location_id where d.location_id=(select location_id from  locations where city='Toronto');
select* from locations;

-- 17. Write a query to display the employee number, name( first name and last name ) and job id for all employees whose salary is more than any average salary of any department.
select  concat(first_name," ",last_name) as emp_name, job_id from employees where salary >(select avg(salary) from employees);

-- 18.Write a query to display the employee name( first name and last name ) and department for all employees for any existence of those employees whose salary is more than 3700.  
select  concat(first_name," ",last_name) as emp_name, department_id from employees where exists (select 1 from employees where salary>3700);



