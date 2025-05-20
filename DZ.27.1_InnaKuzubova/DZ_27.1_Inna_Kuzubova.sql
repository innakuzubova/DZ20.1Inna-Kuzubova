create database qaAuto;
use qaAuto;

create table car_brands (
id int auto_increment not null unique primary key,
title varchar(10));

insert into car_brands  (title)
values ("Audi"),
("BMW"),
("Ford"),
("Porsche"),
("Fiat");

create table car_models (
id int auto_increment not null unique primary key,
title varchar(10),
car_brandsId int,
foreign key (car_brandsId) references car_brands(id));

insert into car_models  (title, car_brandsId)
values ("TT",1),
("R8",1),
("3",2);

create table users (
id int auto_increment not null unique primary key,
firstname varchar(50),
lastname varchar(50) CHARACTER SET utf8mb4 collate utf8mb4_unicode_ci,
email varchar(255) unique,
password varchar(100));

insert into users (firstname, lastname, email, password)
values ("Ivan","Ivanov","IvanIvanov@gmail.com","qwerty123");

create table cars (
id int auto_increment not null unique primary key,
mileage int,
initialMilleage int,
usersId int,
foreign key (usersId) references users(id),
car_brandsId int,
foreign key (car_brandsId) references car_brands(id),
car_modelsId int,
foreign key (car_modelsId) references car_models(id));

insert into cars (mileage, initialMilleage, usersId, car_brandsId, car_modelsId)
values (60000,50000,1,1,1),
(65000,40000,1,1,2),
(70000,30000,1,2,3);

