/* just write these interactively to test things out */

select DB_NAME()
go

select name from sys.databases
go

create database test
go

select name from sys.databases
go

create table stuff (id INT PRIMARY KEY, description VARCHAR (20) NOT NULL)
go

select * from stuff
go

insert into stuff (id, description) values (1, 'foo')
go

select * from stuff
go
