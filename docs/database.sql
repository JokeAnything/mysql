--创建数据库，数据库名称my_database，默认缺省的字符集为utf8
create database if not exists my_database charset utf8;

--显示状态如下：
--mysql> create database if not exists my_database charset utf8;
--Query OK, 1 row affected (3.84 sec)

--切换默认使用的数据库
use my_database;