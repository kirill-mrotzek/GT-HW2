-- Создать базу данных homeworks
create database homeworks;

-- В этой базе создать таблицу employees с полями:
-- • id – integer - уникальное значение, не пустое, с автозаполнением 
-- • firstname - varchar(128) - не пустое
-- • lastname - varchar(128) - не пустое
-- • job - varchar(64)
-- • age - integer - от 20 до 100(вкл.)
-- • hascar – char только один символ, по умолчанию 'N' 
-- • username - varchar(128) - уникальное значение, не пустое
create table employees(
	id int primary key not null auto_increment,
    firstname varchar(128) not null,
    lastname varchar(128) not null,
    job varchar(64),
    age int check(age between 20 and 100),
    hascar char(1) default 'N',
    username varchar(128) unique not null
   );
   
   -- Добавить 5 строк
   insert into employees(firstname, lastname, job, age, hascar, username)
   values('John', 'Doe', 'Engineer', 30, 'N', 'johndoe');
   
   insert into employees(firstname, lastname, job, age, hascar, username)
   values('Jane', 'Smith', 'Manager', 45, 'Y', 'janesmith');
   
   insert into employees(firstname, lastname, job, age, hascar, username)
   values('Alex', 'Johnson', 'Designer', 28, 'N', 'alexjohnson');
   
   insert into employees(firstname, lastname, job, age, hascar, username)
   values('Emma', 'Brown', 'Developer', 35, 'Y', 'emmabrown');
   
   insert into employees(firstname, lastname, job, age, hascar, username)
   values('Liam', 'Davis', 'Analyst', 40, 'N', 'liamdavis');
   
   -- Удалить таблицу employees
   drop table employees;
   
   -- Удалить бд homeworks
   drop database homeworks;
   
   