----Retrieve the first names F_NAME and last names L_NAME of all employees who live in Elgin, IL
select F_NAME, L_NAME from Employees where address like '%Elgin,IL%'

-----Identify the employees who were born during the 70s
select F_Name, L_name from Employees where B_date like'197%'

-----Retrieve all employee records in department 5 where salary is between 60000 and 70000
select * from employees where (salary between 60000 AND 70000) and Dep_id = 5

---- Retrieve a list of employees ordered by department ID
select f_name,L_name,Dep_id from employees order by dep_id

-----Get the output of the same query in descending order of department ID, and within each deaprtment, the records should be ordered in descending alphabetical order by last name
select f_name,L_name,Dep_id from employees order by dep_id desc, l_name desc

-----For each department ID,retrieve the number of employees in the department
select dep_id, count(*) as Count from employees group by dep_id

-----For each department, retrieve the number of employees in the department and the average employee salary in the department
select dep_id, count(*) as Count, avg(salary) from employees group by dep_id

------Label the computed columns in the result set of the last problem as No. of EMPLOYEES and AVG_SALARY
select dep_id, count(*) as "No. of Employees", avg(salary) as "AVG_SALARY" from employees group by dep_id

------Sort the result of the previous query by average salary
select dep_id, count(*) as "No. of Employees", avg(salary) as "AVG_SALARY" from employees group by dep_id ORDER BY AVG_SALARY

------Limit the result to departments with fewer than 4 employees
select dep_id, count(*) as "No. of Employees", avg(salary) as "AVG_SALARY" from employees group by dep_id HAVING count(*)<4 ORDER BY AVG_SALARY

------Retrieve the list of all employees, first and last names, whose first names start with ‘S’
select F_NAME, L_NAME from Employees where f_name like 'S%'

-------Arrange all the records of the EMPLOYEES table in ascending order of the date of birth
select * from employees order by B_date

------Group the records in terms of the department IDs and filter them of ones that have average salary more than or equal to 60000. Display the department ID and the average salary
select dep_id,count(*) as "No. of Employees", avg(salary)as "AVG_Salary" from employees group by dep_id having avg(salary)>=6000

------For the problem above, sort the results for each group in descending order of average salary
select dep_id,count(*) as "No. of Employees", avg(salary)as "AVG_Salary" from employees group by dep_id having avg(salary)>=6000 ORDER BY avg(salary) desc


