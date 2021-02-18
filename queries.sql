/*select rental_duration, avg(rental_rate)
from film
group by rental_duration
order by rental_duration


select inventory.*, film.title 
from inventory
join film
on inventory.film_id=film.film_id
where film.title= 'Early Home'


1. List the following details of each employee: employee number, last name, first name, sex, and salary. */
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries on employees.emp_no= salaries.emp_no;

/*2. List first name, last name, and hire date for employees who were hired in 1986.*/
select first_name, last_name, hire_date as "1986 Hires"
from employees
where hire_date between '1986-01-01' and '1986-12-31'

/* 3. List the manager of each department with the following information: 
department number, 
department name, the manager's employee number, 
last name, first name.*/
select * from dept_manager -- Need dept_no and emp_no from dept_manager 
select * from departments -- Need dept_no and dept_name from departments
select * from employees -- Need emp_no, first_name, last_name from employees

-- Departments columns: dept_no, dept_name
-- dept_manager columns: dept_no, emp_no
-- employees: emp_no, first_name, last_name
-- Need to do the departments file first, all the info, full outer join with
-- dept_manager, right join (?) with employees? 


select departments.dept_no, departments.dept_name, dept_manager.emp_no
from departments
full outer join dept_manager on departments.dept_no=dept_manager.dept_no

select departments.dept_no, departments.dept_name from departments full outer join dept_manager on 
departments.dept_no = dept_manager.emp_no


select departments.* from departments
select dept_manager.dept_no, dept_manager.emp_no from dept_manager
join dept_manager on departments.dept_no= dept_manager.dept_no
	
UNION 

select dept_manager.emp_no from dept_manager
	join dept_manager on departments.dept_no = dept_manager.dept_no



select dept_manager.*
from dept_manager
join departments on dept_manager.dept_no= departments.dept_no


dept_name.departments, 

 last_name.employees, first_name.employees
from







--(Select extract(year from)

	
	
	
	-- select extract(hire_date from employees)
	--from employees
	
	
	
	
	--where hire_date between 1/1/1986 and 12/31/1986)

select hire_date from employees