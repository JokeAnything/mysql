--创建数据库，数据库名称my_database，默认缺省的字符集为utf8
create database if not exists my_database charset utf8;

--显示状态如下：
--mysql> create database if not exists my_database charset utf8;
--Query OK, 1 row affected (3.84 sec)

--切换默认使用的数据库
use 'my_database';

--显示创建数据库时的sql语句
show create database my_database;

--删除数据库，谨慎操作
drop database my_database;

--设置数据库字符集utf8
alter database my_database character set utf8;

--设置数据库字符集gbk
alter database my_database character set gbk;