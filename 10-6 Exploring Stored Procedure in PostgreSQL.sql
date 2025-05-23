-- No return in procedure


create or replace procedure show_details()
language plpgsql
as
$$
    DECLARE
        test_var int;
   BEGIN
     select avg(salary) into test_var from employees;
     delete from employees where employee_id=1;
        raise notice 'Ok';
     END
$$;

call show_details();


CREATE TABLE Log(
    id serial,
    description text,
    created_time timestamp
);

create or replace procedure  add_log_data(x int)
language plpgsql
as
$$
    DECLARE
        tmp varchar(255);
    BEGIN
    select concat(employee_id,' ',employee_name,' ',department_id,' ',hire_date,' ',salary) into tmp from employees where employee_id=x;
    insert into Log (description, created_time) values (tmp,now());
    delete from employees where employee_id=x;
    raise notice 'Ok';
    end;
$$;



call add_log_data(4);


