use cdac_new;
select * from employees;
-- 1. Write a query to get the job_id and related employee's id.
select job_id, employee_id from employees;

-- 2.Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '124' will be replaced by '999'.
select phone_number, replace(phone_number,'124','999') AS updated_phone_number from employees;

-- 3. Write a query to get the details of the employees where the length of the first name greater than or equal to 8.
select * from employees where length(first_name)>=8;

-- 4. Write a query to display leading zeros before maximum and minimum salary.
select  lpad(max(salary),'10','0') as maxsalary,lpad(min(salary),'10','0') as minsalary from employees;

-- 5. Write a query to append '@example.com' to email field.
select email, concat(email,"@example.com") from employees;

-- 6. Write a query to get the employee id, first name and hire month.
select employee_id,first_name,hire_date,extract(month from hire_date) from employees;

-- 7.Write a query to get the employee id, email id (discard the last three characters).
select employee_id,email, trim(substring_index(email,'.',-1)from email) from employees;
select employee_id,email, substring(email,1,(length(email)-3)) from employees;

-- 8. Write a query to find all employees where first names are in upper case.
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (207,'SANJANA','KUMBHAR','sanjana.kumbhar@sqltutorial.org','518.128.4568','1999-06-19',4,29000.00,NULL,9);
select first_name from employees where first_name=BINARY(upper(first_name));

-- 9.Write a query to extract the last 4 character of phone numbers.
select phone_number, trim(substring_index(phone_number,'.',2)from phone_number) from employees;
select phone_number, substring_index(phone_number,'.',-1) from employees;

-- 10. Write a query to get the last word of the street address.
select street_address, trim(substring_index(street_address,' ',2) from street_address) from locations;
select street_address, substring_index(street_address,' ', -1) from locations;

-- describe employees;
describe locations;





