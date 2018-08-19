--数据操作:增加,删除,修改,查询
--前提，存在student表，格式如下：
--mysql> desc student;
--+-------+-------------+------+-----+---------+-------+
--| Field | Type        | Null | Key | Default | Extra |
--+-------+-------------+------+-----+---------+-------+
--| id    | int(11)     | NO   | PRI | NULL    |       |
--| name  | varchar(20) | YES  |     | NULL    |       |
--| class | int(11)     | YES  |     | NULL    |       |
--| sex   | tinyint(4)  | YES  |     | NULL    |       |
--+-------+-------------+------+-----+---------+-------+
--4 rows in set (0.02 sec)

-- 向数据库student表中增加记录，增加两条
insert into student values(1,'a',900,0),(2,'b',900,1);

-- 向数据库student表中增加记录，指定字段，其他使用缺省值
insert into student(id,name) values(3,'c'),(4,'d');

-- 再次向数据库student表中插入id=1的数据(如果未指定字段，数据个数需要与列个数相等)
insert into student values(1,'a',900,0);

-- 向数据库student表中插入中文数据
insert into student values(5,'李明',900,0);

-- 从数据库student表中删除数据，删除id=1的记录,按条件删除(删除不可恢复)
delete from student where id = 1;

-- 将数据库student表中所有的数据全部删除(删除不可恢复)
delete from student;

-- 修改student表中name=a的id值
update student set id = 2 where name = 'a';

-- 修改student表中name=a的id值和name值(可同时修改多个字段数据)
update student set id = 3,name='b' where name = 'a';

-- 修改student表中class为null的值为900(注意null值不可与数据比较，只能is null显示指明)
update student set class = 900 where class is null;

-- 修改student表中class字段所有的数据(谨慎操作)
update student set class = 1000;

-- 查询所有的数据
select * from student;

-- 指定条件查询所有的字段,id = 3
select * from student where id = 3;

-- 指定条件查询的sex字段,id = 3 && name = 'b'
select sex from student where id = 3 and name ='b';

