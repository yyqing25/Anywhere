create database anywheredb charset utf8;
use anywheredb;

set names gbk; ##设置编码

create table user(
    id int primary key auto_increment,
    name varchar(10),
    tel varchar(50)
);

insert into user values (1,'蔡徐坤','123456');