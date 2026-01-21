create user demo
IDENTIFIED by demo;

alter session set container = orclpdb;

grant create session, create table,
create sequence, create view
to demo;

create role student;

grant create table, create view, select any table , insert any table
to student;

grant student to demo;

alter user demo quota unlimited on users;

select * from access$;
