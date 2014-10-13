# Создание БД

CREATE DATABASE `mydb` CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password’;
GRANT ALL PRIVILEGES ON username . * TO 'newuser'@'localhost';

grant usage on *.* to myUser@localhost identified by ‘myPass’;

grant all privileges on myUser.* to mydb@localhost ;