-- 创建学生表
create table if not exists student(
    id int primary key,
    name varchar(20),
    gender tinyint,
    class int
) engine=InnoDB default charset=utf8;

--显示当前数据库所有的表
show tables;

--删除表具体列(class)
alter table student drop column class;

--在表的列后面再增加一个字段,字段名称为class，类型为整形
alter table student add column class int;

--在表的name列后面再增加一个字段,字段名称为class，类型为整形
alter table student add column class int after name;

-- 删除表的id字段
alter table student drop column id;

--在表的最前增加一个字段，整形，主键，不允许为NULL
alter table student add column id int primary key not null first;

-- 修改表的字段名称与属性(必须要修改字段名称)
alter table student change gender sex tinyint;

-- 修改表的字段的属性(单纯修改字段属性)
alter table student modify sex int;

-- 显示student表字段信息
desc student
