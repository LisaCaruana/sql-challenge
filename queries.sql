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
department number, department name, the manager's employee number, 
last name, first name.*/
select * from dept_manager -- Need dept_no and emp_no from dept_manager 
select * from departments -- Need dept_no and dept_name from departments
select * from employees -- Need emp_no, first_name, last_name from employees
select * from dept_emp

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
full outer join dept_manager on departments.dept_no=dept_manager.dept_no
right join employees on dept_manager.emp_no= employees.emp_no

/*4. List the department of each employee with the following information: 
employee number, last name, first name, and department name.*/
-- dept_emp: emp_no, dept_no
-- departments: dept_no, dept_name
-- employees: emp_no, emp_last_name/first_name
-- Need to join employees with dept_emp on emp_no, then w depts on dept_no (inner join?)
select departments.dept_name, dept_emp.emp_no, employees.first_name, employees.last_name
from departments
inner join dept_emp on departments.dept_no=dept_emp.dept_no
left join employees on dept_emp.emp_no=employees.emp_no

/*5. List first name, last name, and sex for employees whose 
first name is "Hercules" and last names begin with "B."*/

select first_name, last_name, sex
from employees
where first_name = 'Hercules' AND last_name like 'B%'
		

/*

select employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no, departments.dept_name
from employees
full outer join dept_emp on employees.emp_no = dept_emp.emp_no
right join departments on dept_emp.dept_no

select employees.emp_no, employees.last_name, employees.first_name, dept_emp.emp_no, dept_emp.dept_no, departments.dept_name
from employees
right join dept_emp on employees.emp_no=dept_emp.emp_no  


-- Departments columns: dept_no, dept_name
-- dept_manager columns: dept_no, emp_no
-- employees: emp_no, first_name, last_name
-- Need to do the departments file first, all the info, full outer join with
-- dept_manager, right join (?) with employees? 
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

HERCULES
select employees.first_name, employees.last_name, employees.sex
from employees
where first_name in
	()
		
select employees.first_name, employees.last_name, employees.sex
from employees
where first_name in
	(select first_name
	from employees
	where first_name = 'Hercules'
	(
		select last_name
		from employees
		where last_name = 'B%'
	 )
);

		
select employees.first_name, employees.last_name, employees.sex
from employees
where first_name in
	(select first_name
	from employees
	where first_name = 'Hercules'
	 (
		 select last_name
		 from employees
		 where last_name = 'B%')
	)
		
	 
select employees.first_name, employees.last_name, employees.sex
from employees
where first_name in
	 (select first_name
		from employees
		where first_name = 'Hercules' and last_name like 'B%') 
	
	  
	  
	  (select last_name
		from employees
		where last_name like 'B%'))
	
	 
select employees.first_name, employees.last_name, employees.sex
from employees
where last_name in
	 (select last_name
		from employees
		where last_name like 'B%')
	  	(
		select first_name 
		from employees
		where first_name = 'Hercules')
	)

	
select employees.first_name, employees.last_name, employees.sex
from employees
where first_name in	 
	 select first_name
		from employees
		where first_name = 'Hercules'
group by first_name
	  	  (select last_name from employees
		  where last_name like 'B%') 

	
select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name in (select first_name from employee where first_name = 'Hercules')
	and employees.last_name in (select last_name from employees where last_name like 'B%')

select employees.first_name, employees.last_name, employees.sex
from employees
where first name in
	(
	select first_name
	from employees
	where first_name = 'Hercules' )




select first_name, last_name, sex
from employees
where first_name in
(
	select last_name in
		employees
		where last_name like 'B%'
	(
	select first_name
	from employees
	where first_name = 'Hercules'
	)
		
)


select distinct film.title from film
where film.film_id in
	(
	select inventory.inventory_id from inventory
	where inventory.inventory_id in
		(
		select rental.inventory_id from rental
		where rental.staff_id in
			(
			select staff.staff_id from staff
			where staff.first_name='Jon'
			and staff.last_name= 'Stephens'
			)
		)
	)
	
select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name in
	(
	select employees.last_name from employees
	where employees)


select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name in
	(
	select employees.first_name from employees
	where employees.first_name = 'Hercules' and
		(
		select employees.last_name from employees
		where employees.last_name like 'B%'
		)
	);  

select employees.first_name, employees.last_name, employees.sex
from employees
where employees.last_name like
	(
	select employees.last name from employees
	where employees.last_name like 'B%'
	(
	select employees.first_name from employees
	where mployees.first_name = 'Hercules'
	)
)

select employees.first_name, employees.last_name, employees.sex
from employees
where employees.*
	(select employees.first_name from employees
	where employees.first_name = 'Hercules' AND employees.last_name= 'B%')

select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name in
	(
	select employees.first_name from employees
	where first_name in employees.first_name = 'Hercules' 
		)
		select last_name.employees from employees
		where employees.last_name like 'B%'
		)
		)
select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name in
	(
	select employees.first_name from employees
	where first_name in employees.first_name = 'Hercules' 
		)





	(
	select employees.last_name from employees
	where last_name in employees.last_name like 'B%'
		(
			
		)
	)


		
		
(
	Select last_name 
	from employees
	where last_name like 'B%' and first_name = 'Hercules')
		
		
		
		(	
			select last_name
			from employees
			where last_name like 'B%'
		)
	);