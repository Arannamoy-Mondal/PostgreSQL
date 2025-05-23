-- PostgreSQL organized file as a heap file. Indexing help to find any query data by reducing time. There are generally 4 type of indexing algorithm. These are (i) B-Tree, (ii) Hash, (iii) GIN, (iv) GIST
create index idx
on employees using hash (employee_name);

select * from employees;