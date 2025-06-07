创建学生表 student 


CREATE TABLE student(
    name VARCHAR(32), -- 32代表 32个字符
    gender BIT,
    age INT,
    birth DATE,       
    gpt DECIMAL(4, 2) 
) CHARACTER SET=utf8;


插入数据
mysql> insert into student (name) values ('allen ma');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+----------+--------+------+-------+------+
| name     | gender | age  | birth | gpt  |
+----------+--------+------+-------+------+
| allen ma | NULL   | NULL | NULL  | NULL |
+----------+--------+------+-------+------+
1 row in set (0.00 sec)

下来把 gender 设为 not NULL 然后再次练习插入
CREATE TABLE student(
    name VARCHAR(32), -- 32代表 32个字符
    gender BIT NOT NULL,
    age INT,
    birth DATE,       
    gpt DECIMAL(4, 2) 
) CHARACTER SET=utf8;

如果设为 not null 插入时候没有相应的value 会报错
mysql> insert into student (name) values ('allen ma');
ERROR 1364 (HY000): Field 'gender' doesn't have a default value

将名字 name 设置为 not null 并且还要唯一性

CREATE TABLE student(
    name VARCHAR(32) UNIQUE NOT NULL, -- 32代表 32个字符
    gender BIT NOT NULL,
    age INT,
    birth DATE,       
    gpt DECIMAL(4, 2) 
) CHARACTER SET=utf8;

mysql> INSERT INTO student (name, gender) VALUES ('allen ma',1);
Query OK, 1 row affected (0.00 sec)

如果在此插入相同的姓名 ，就会报错：
mysql> INSERT INTO student (name, gender) VALUES ('allen ma',0);
ERROR 1062 (23000): Duplicate entry 'allen ma' for key 'name'
