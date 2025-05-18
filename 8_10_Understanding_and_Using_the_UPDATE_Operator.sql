CREATE TABLE Table1(
    id serial,
    name varchar(50),
    email varchar(50) check ( email in ('%@%.%') ) primary key
);

ALTER TABLE Table1 DROP COLUMN email;

ALTER TABLE Table1 ADD COLUMN email VARCHAR(50) CHECK ( email like '%@%.%' );
ALTER TABLE Table1 ADD COLUMN Location VARCHAR(50);
CREATE DATABASE Test1;

INSERT INTO Table1 (name, email) VALUES ('John Doe','john@doe.com');

SELECT * FROM Table1;


UPDATE Table1 SET name='Hello World' WHERE id='4';
