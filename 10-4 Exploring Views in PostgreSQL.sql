-- View works like variable

create view avg_salary as (select employees.department_id,avg(employees.salary) from employees group by department_id);

select * from avg_salary;