

-- create or replace trigger TR
-- before delete
-- on employees
-- for each row
--     execute function_name();

create or replace function add_data()
returns trigger
language plpgsql
as
$$
    BEGIN
        insert into log (description, created_time) values (concat(old.employee_id,old.employee_name),now());
        return old;
    end;
$$;

create or replace trigger TR
before delete
on employees
for each row
    execute function add_data();


delete
from employees
where employee_id=6;

select * from log;