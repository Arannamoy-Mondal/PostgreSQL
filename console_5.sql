create table person (
  id serial NOT NULL,
  user_name varchar(255),
  age int,
  constraint person_age check ( age>18 ),
  constraint person_pk_rule primary key (id)
);

drop table person;

SELECT UPPER(
       'create table person (
  id serial NOT NULL,
  user_name varchar(255),
  age int,
  constraint person_age check ( age>18 ),
  constraint person_pk_rule primary key (id)
);'
       );