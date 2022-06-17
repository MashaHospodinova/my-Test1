create database SalaryWorkers_db;
drop database SalaryWorkers_db;

use SalaryWorkers_db;

create table workers(
id int not null auto_increment primary key,
FirstName varchar(15) not null,
SekondName varchar (30) not null,
Tax_id int not null unique);

drop table workers;
truncate table workers;
select * from workers;

create table salary( 
id int not null auto_increment primary key,
Year_ int not null,
Month_ int not null,
Summ decimal (7,2),
Workers_Id int not null,
foreign key (Workers_Id) references workers (id));

drop table salary;
select * from salary;

insert into workers(FirstName, SekondName, Tax_id)
values ('Andrey', 'Levkin', 223456 ), ('Lena', 'Cherchenko', 132425 ), ('Vasja', 'Kurkov', 987654 ), ('Dima', 'Petrov', 452749 ), ('Galja', 'Virtus', 564738 ), ('Masha', 'Mishina', 098789 ), ('Tolja', 'Petrenko', 106574 ), ('Fedor', 'Vasiljev', 009988 ), ('Sasha', 'Zarubej', 665547 ), ('Andrej', 'Vasil', 112233 ), ('Zachar', 'Kondratenko', 554499 ), ('Masha', 'Litvinova', 400099 ), ('Solomija', 'Gorova', 077788), 
('Ira', 'Demjanenko', 445555), ('Ira', 'Sahno', 555555), ('Sasha', 'Firsov', 111122), ('Lena', 'Tomashek', 889990), ('Dima', 'Rjashina', 399993), ('Gordej', 'Gor', 715556), ('Pamela', 'Firs', 690690), ('Oksana', 'Dodg', 211221), ('Inga', 'Nikas', 979797), ('Fedor', 'Semenovich', 344433), ('Vasja', 'Dunkan', 464646), ('Masha', 'Grechka', 101010), ('Zahar', 'Rudenko', 787870), ('Mark', 'Notton', 616263);

insert into salary(Year_, Month_, Summ, Workers_Id)
values (2021, 01, 20000.03, 1), (2021, 01, 13000.25, 2), (2021, 01, 8000.23, 3), (2021, 01, 3000.00, 4), (2021, 01, 32000.08, 5), (2021, 01, 2000.89, 6), (2021, 01, 22000.03, 7), (2021, 01, 20000.03, 8), (2021, 01, 20000.03, 9), (2021, 01, 14000.00, 10), (2021, 01, 18000.03, 11), (2021, 01, 45000.39, 12), (2021, 02, 20000.03, 1), (2021, 02, 13000.25, 2), (2021, 02, 8000.23, 3), (2021, 02, 3000.00, 4), (2021, 02, 32000.08, 5), (2021, 02, 2000.89, 6), (2021, 02, 22000.03, 7), (2021, 02, 20000.03, 8), (2021, 02, 20000.03, 9), (2021, 02, 14000.00, 10), (2021, 02, 18000.03, 11), (2021, 02, 45000.39, 12),
(2021, 03, 20000.03, 1), (2021, 03, 13000.25, 2), (2021, 03, 8000.23, 3), (2021, 03, 3000.00, 4), (2021, 03, 32000.08, 5), (2021, 03, 2000.89, 6), (2021, 03, 22000.03, 7), (2021, 03, 20000.03, 8), (2021, 03, 20000.03, 9), (2021, 03, 14000.00, 10), (2021, 03, 18000.03, 11), (2021, 03, 45000.39, 12), (2021, 04, 20000.03, 1), (2021, 04, 13000.25, 2), (2021, 04, 8000.23, 3), (2021, 04, 3000.00, 4), (2021, 04, 32000.08, 5), (2021, 04, 2000.89, 6), (2021, 04, 22000.03, 7), (2021, 04, 20000.03, 8), (2021, 04, 20000.03, 9), (2021, 04, 14000.00, 10), (2021, 04, 18000.03, 11), (2021, 04, 45000.39, 12);

truncate table salary;

select w.id, w.FirstName, w.SekondName, s.Year_, sum(s.summ) from workers as w left join salary as s on w.id=s.workers_id group by w.id, s.Year_ having sum(s.summ)>100000;

 