CREATE table employees (
id serial  primary key,
 employee_name Varchar(50) not null
)
select * from employees

insert into employees(employee_name)
values ('Мария'), ('Инна'), ('Александр'), ('Анна'), ('Сергей'), ('Елена'), ('Иван'), ('Алексей'), ('Ольга'), ('Виктория'), ('Артем'), ('Олег'), ('Наталья'), ('Андрей'), ('Владимир'), ('Юлия'), ('Дмитрий'), ('Татьяна'), ('Михаил'), ('Екатерина'), ('Антон'), ('Алиса'), ('Николай'), ('Ксения'), ('Максим'), ('Евгения'), ('Даниил'), ('Елизавета'), ('Павел'), ('Арина'), ('Георгий'), ('Вероника'), ('Игорь'), ('Ангелина'), ('Василий'), ('Маргарита'), ('Владислав'), ('Евгений'), ('Елена'), ('Данила'), ('Анастасия'), ('Виталий'), ('Марина'), ('Степан'), ('Кристина'), ('Роман'), ('Вера'), ('Евгений'), ('Ирина'), ('Валерия'), ('Вадим'), ('Агата'), ('Руслан'), ('Валентина'), ('Григорий'), ('Алина'), ('Сергей'), ('Мария'), ('Илья'), ('Милана'), ('Артемий'), ('Дарья'), ('Антон'), ('Александра'), ('Никита'), ('Алиса'), ('Павел'), ('Карина'), ('Владислав'), ('Елизавета');

CREATE table salary (
id serial  primary key,
monthly_salary Int not null
)

select * from salary

insert into salary (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

CREATE table  employee_salary (
id serial  primary key,
employee_id Int not null unique,
salary_id Int not null
);

select * from employee_salary

insert into employee_salary (employee_id, salary_id)
values 
(3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(26,4),
(12,1),
(33,7),
(36,15),
(28,11),
(10,1),
(20,3),
(34,2),
(90,12),
(50,11),
(18,8),
(70,4),
(77,15),
(78,8),
(98,7),
(89,14),
(57,11),
(111,2),
(99,11),
(222,16),
(75,9),
(93,10),
(43,5),
(56,6),
(68,9),
(21,12),
(55,13),
(49,14),
(46,9),
(38,5),
(64,3),
(19,15);

CREATE table roles (
id serial  primary key,
role_name int not null unique
)

select * from roles

ALTER table roles
ALTER column role_name type varchar(30);


insert into roles(role_name)
values
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

CREATE table  roles_employee
 (
id serial  primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees(id),
foreign key (role_id) references roles(id) )

 select * from 	roles_employee
 	
 insert into roles_employee(employee_id,role_id)
values	
(7,2),
(20,4),
(3,9),
(5,13),
(23,4),
(11,2),
(10,9),
(22,18),
(21,3),
(34,4),
(6,7),
(36,15),
(28,11),
(48,1),
(24,3),
(17,2),
(35,20),
(50,11),
(18,8),
(70,16),
(44,15),
(59,8),
(66,7),
(29,14),
(57,11),
(41,2),
(31,20),
(33,16),
(62,9),
(2,10),
(43,5),
(56,6),
(68,17),
(61,12),
(55,13),
(49,14),
(46,19),
(38,5),
(64,3),
(19,15);


