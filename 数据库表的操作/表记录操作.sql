-- 添加记录

-- 创建一个新的 database 
CREATE DATABASE allen_production CHARACTER set utf8;

-- 创建一个学生表 student
CREATE TABLE student(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    gender BIT DEFAULT 1,
    age INT,
    birth DATE
)CHARACTER SET=utf8;

-- 显示表的结构
mysql> desc student;
+--------+-------------+------+-----+---------+----------------+
| Field  | Type        | Null | Key | Default | Extra          |
+--------+-------------+------+-----+---------+----------------+
| id     | int(11)     | NO   | PRI | NULL    | auto_increment |
| name   | varchar(20) | NO   |     | NULL    |                |
| gender | bit(1)      | YES  |     | b'1'    |                |
| age    | int(11)     | YES  |     | NULL    |                |
| birth  | date        | YES  |     | NULL    |                |
+--------+-------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

-- 添加一条记录
INSERT INTO student (name, gender, age, birth) VALUES ('李时珍', 1, 67, '1009-04-05');

mysql> INSERT INTO student (name, gender, age, birth) VALUES ('李时珍', 1, 67, '1009-04-05');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+----+-----------+--------+------+------------+
| id | name      | gender | age  | birth      |
+----+-----------+--------+------+------------+
|  1 | 李时珍    |       |   67 | 1009-04-05 |
+----+-----------+--------+------+------------+
1 row in set (0.00 sec)

-- 批量添加记录
INSERT INTO student (name, gender, age, birth) VALUES ('李嘉诚', 1, 89, '1934-09-08'),
('王大拿', 1, 76, '1964-07-06'), ('范德彪', 1, 70, '1903-06-02'), ('张玉芬', 0, 34, '1956-03-01');

mysql> INSERT INTO student (name, gender, age, birth) VALUES ('李嘉诚', 1, 89, '1934-09-08'),
    -> ('王大拿', 1, 76, '1964-07-06'), ('范德彪', 1, 70, '1903-06-02'), ('张玉芬', 0, 34, '1956-03-01');
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+----+-----------+--------+------+------------+
| id | name      | gender | age  | birth      |
+----+-----------+--------+------+------------+
|  1 | 李时珍    |       |   67 | 1009-04-05 |
|  2 | 司马迁    |       |   85 | 1080-09-01 |
|  3 | 李嘉诚    |       |   89 | 1934-09-08 |
|  4 | 王大拿    |       |   76 | 1964-07-06 |
|  5 | 范德彪    |       |   70 | 1903-06-02 |
|  6 | 张玉芬    |        |   34 | 1956-03-01 |
+----+-----------+--------+------+------------+
6 rows in set (0.00 sec)

-- insert set 来添加记录 如：
INSERT INTO student SET name='奥巴驴', gender=1, age=66, birth='1908-07-09';

mysql> INSERT INTO student SET name='奥巴驴', gender=1, age=66, birth='1908-07-09';
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+----+-----------+--------+------+------------+
| id | name      | gender | age  | birth      |
+----+-----------+--------+------+------------+
|  1 | 李时珍    |       |   67 | 1009-04-05 |
|  2 | 司马迁    |       |   85 | 1080-09-01 |
|  3 | 李嘉诚    |       |   89 | 1934-09-08 |
|  4 | 王大拿    |       |   76 | 1964-07-06 |
|  5 | 范德彪    |       |   70 | 1903-06-02 |
|  6 | 张玉芬    |        |   34 | 1956-03-01 |
|  7 | 奥巴驴    |       |   66 | 1908-07-09 |
+----+-----------+--------+------+------------+
7 rows in set (0.00 sec)
