use cdac_new;
select* from departments;
select* from locations;
select* from employees;
select* from jobs;
-- Q1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.
select l.location_id, l.street_address, l.city, l.state_province, c.country_name
from locations l left join countries c on (l.country_id=c.country_id);

-- Q2. Write a query to find the names (first_name, last name), department ID and name of all the employees.
select concat(e.first_name,' ',e.last_name) as name ,e.department_id,d.department_name from employees e join departments d on (e.department_id=d.department_id);

-- Q3. Find the names (first_name, last_name), job, department number, and department name of the employees who work in London.
select concat(e.first_name,' ',e.last_name) as name ,e.job_id, d.department_name from employees e join departments d on (e.department_id=d.department_id) join locations l on (d.location_id=l.location_id)where(l.city ='London');

-- Q4. Write a query to find the employee id, name (last_name) along with their manager_id, manager name (last_name). //self join
select e.employee_id, e.last_name as name , m.employee_id as manager_id, m.last_name as manager_name from employees e join employees m on (e.manager_id =m.employee_id);


-- Q5. Find the names (first_name, last_name) and hire date of the employees who were hired after 'Jones'.
select concat(e.first_name,' ',e.last_name)as name,e.hire_date from employees e where hire_date>(select hire_date from employees where first_name='Jones' or last_name='Jones');

-- Q6. Write a query to get the department name and number of employees in the department.
select d.department_name, count(e.employee_id) from departments d join employees e on (d.department_id=e.department_id) group by d.department_id;

-- Q7. Find the employee ID, job title, number of days between ending date and starting date for all jobs in department 9 from job history.
select e.employee_id, j.job_title, datediff(curdate(),e.hire_date)as datedifference from employees e join jobs j on e.job_id=j.job_id where e.department_id=9;

-- Q8. Write a query to display the department ID, department name and manager first name.
select distinct d.department_id, d.department_name, m.first_name as manager_name from employees e join departments d on e.department_id=d.department_id join employees m  on e.manager_id=m.employee_id;


-- Q9. Write a query to display the department name, manager name, and city.

select distinct d.department_name, m.first_name as manager_name, l.city from departments d join employees e on (e.department_id = d.department_id) join locations l on (d.location_id = l.location_id) join employees m on e.manager_id=m.employee_id;

-- Q10. Write a query to display the job title and average salary of employees.
select avg(e.salary),j.job_title from employees e join jobs j on e.job_id=j.job_id group by j.job_title; 

-- Q11. Display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
select (e.salary-(select  min(e2.salary) as minsal from employees e2 where e2.job_id=e.job_id)) as salaryDiff,j.job_title,e.first_name from employees e join jobs j on e.job_id=j.job_id;
-- select min(e.salary) as minsal,j.job_title from employees e join jobs j on e.job_id=j.job_id group by j.job_title; 
 select (e.salary-j.min_salary) as salaryDiff,j.job_title,e.first_name from employees e join jobs j on e.job_id=j.job_id;

-- Q12. Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.
select e.employee_id,concat(e.first_name,' ',e.last_name)as name,e.hire_date,e.salary ,e.job_id, e.manager_id,e.department_id,j.job_title from employees e join jobs j on e.job_id= j.job_id where e.salary>10000 order by e.salary asc;

-- Q13. Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years.
select distinct d.department_name, concat(e2.first_name,' ',e2.last_name)as name,e2.hire_date,e2.salary from employees e join employees e2 on e.manager_id=e2.employee_id join departments d on e2.department_id=d.department_id;





