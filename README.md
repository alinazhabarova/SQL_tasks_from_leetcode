# SQL_tasks_from_leetcode
Решенные задачи разного уровня сложности, SQL 


# Task 1 #
- Task:
1075. Project Employees I

Table: Project


| Column Name   | Type          |
| ------------- | ------------- |
| project_id    | int           |
| employee_id   | int           |

(project_id, employee_id) is the primary key of this table.
employee_id is a foreign key to Employee table.
Each row of this table indicates that the employee with employee_id is working on the project with project_id.
 

Table: Employee

| Column Name      | Type          |
| ---------------- | ------------- |
| employee_id      | int           |
| name             | varchar       |
| experience_years | int           |

employee_id is the primary key of this table. It's guaranteed that experience_years is not NULL.
Each row of this table contains information about one employee.
 

Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Project table:

| project_id  | employee_id |
| ----------- | ----------- |
| 1           | 1           |
| 1           | 2           |
| 1           | 3           |
| 2           | 1           |
| 2           | 4           |

Employee table:

| employee_id | name   | experience_years |
| ----------- | ------ | ---------------- |
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |

Output: 

| project_id  | average_years |
| ----------- | ------------- |
| 1           | 2.00          |
| 2           | 2.50          |

# Task 2 #

Отобрать клиентов по г. Москва с суммарными остатками по клиенту от 20 000 на последнюю дату:

create table clients (client_id varchar(1), FIO varchar (255) , Region varchar(50), account_num int);

create table account (Date date, Summa_USD money, Account_num int);

insert into clients values 
('A','Иванов','Москва',111), 
('A','Иванов','Москва',222), 
('B','Петров','Иваново',333), 
('C','Сидоров','Москва',444);

insert into account values
('2012-01-01',15000,111),
('2012-02-01',10000,111),
('2012-02-01',5000,222), ('2012-03-01',30000,333), ('2012-04-01',20000,444);

# Task 3 #

Необходимо посчитать кол-во клиентов, у которых баланс на 2023-07-07 больше 500 рублей:
(IN - приход средств на счет клиента, OUT - отток.)

create table oper (client varchar, date date, type varchar, amount int); 

insert into oper values
('a', '2023-06-02', 'in', 1985),
('a', '2023-06-03', 'in', 1577),
('a', '2023-06-04', 'out', 1597), 
('b', '2023-06-05', 'in', 1468), 
('c', '2023-07-06', 'in', 582), 
('c', '2023-07-08', 'out', 550), 
('d', '2023-06-09', 'in', 1556), 
('d', '2023-06-10', 'out', 1480);

# Task 4 #
Даны данные о действиях клиента в мобильном приложении. Нужно получить для каждого клиента его первое действие и время этого первого действия:

create table events (client varchar, date date, actions varchar); 

insert into events values
('a', '2019-06-02', 'Auth'),
('a', '2019-06-03', 'Pay'),
('a', '2019-06-04', 'Auth'), 
('b', '2019-06-05', 'Settings'), 
('b', '2019-06-06', 'Error'), 
('c', '2019-07-06', 'Chat'), 
('c', '2019-07-08', 'Pay');

