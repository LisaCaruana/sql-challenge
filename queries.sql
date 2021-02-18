/*select rental_duration, avg(rental_rate)
from film
group by rental_duration
order by rental_duration


select inventory.*, film.title 
from inventory
join film
on inventory.film_id=film.film_id
where film.title= 'Early Home'
*/

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries on employees.emp_no= salaries.emp_no;
