select employee_name,salary,department_name
from employees join departments on employees.department_id=departments.department_id where salary>(select avg(employees.salary) from employees);


select department_name,sum(salary) from departments join employees on employees.department_id=departments.department_id group by department_name ;
