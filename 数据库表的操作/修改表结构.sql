--修改表的名字
ALTER TABLE student RENAME new_student;

mysql> ALTER TABLE student RENAME new_student;
Query OK, 0 rows affected (0.01 sec)

mysql> SHOW TABLES;
+---------------+
| Tables_in_crm |
+---------------+
| customer      |
| new_student   |
+---------------+


-- 修改表的编码集
ALTER TABLE new_student CHARACTER SET gbk;

mysql> ALTER TABLE new_student CHARACTER SET gbk;
Query OK, 0 rows affected (0.03 sec)

-- 表的字段的增删该

-- 先创建一个测试表
CREATE TABLE cars(
    sid INT PRIMARY KEY AUTO_INCREMENT
)CHARACTER SET=utf8;

mysql> CREATE TABLE cars(
    ->     sid INT PRIMARY KEY AUTO_INCREMENT
    -> )CHARACTER SET=utf8;
Query OK, 0 rows affected (0.03 sec)

-- 增加一个字段
ALTER TABLE cars ADD brand VARCHAR(32) NOT NULL;

mysql> ALTER TABLE cars ADD brand VARCHAR(32) NOT NULL;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

-- 插入一行数据
INSERT INTO cars (brand) VALUES ('宝马');

mysql> INSERT INTO cars (brand) VALUES ('宝马');
Query OK, 1 row affected (0.01 sec)

mysql> select * from cars;
+-----+--------+
| sid | brand  |
+-----+--------+
|   1 | 宝马   |
+-----+--------+
1 row in set (0.00 sec)

-- 再次增加一个字段 如 country 
ALTER TABLE cars ADD country VARCHAR(32) NOT NULL;
mysql> ALTER TABLE cars ADD country VARCHAR(32) NOT NULL;
Query OK, 0 rows affected (0.06 sec)
mysql> select * from cars;
+-----+--------+---------+
| sid | brand  | country |
+-----+--------+---------+
|   1 | 宝马   |         |
+-----+--------+---------+

-- 增加一个字段 如 year
ALTER TABLE cars ADD year DATE;
mysql> select * from cars;
+-----+--------+---------+------+
| sid | brand  | country | year |
+-----+--------+---------+------+
|   1 | 宝马   |         | NULL |
+-----+--------+---------+------+

-- 删除一个字段 如 year
ALTER TABLE cars DROP year;

mysql> ALTER TABLE cars DROP year;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from cars;
+-----+--------+---------+
| sid | brand  | country |
+-----+--------+---------+
|   1 | 宝马   |         |
+-----+--------+---------+

mysql> desc cars;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| sid     | int(11)     | NO   | PRI | NULL    | auto_increment |
| brand   | varchar(32) | NO   |     | NULL    |                |
| country | varchar(32) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

-- 修改字段的类型、约束、名字等
将 brand VARCHAR 改为15

ALTER TABLE cars modify brand VARCHAR(15) NOT NULL;

mysql> ALTER TABLE cars modify brand VARCHAR(15) NOT NULL;
Query OK, 1 row affected (0.03 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> desc cars;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| sid     | int(11)     | NO   | PRI | NULL    | auto_increment |
| brand   | varchar(15) | NO   |     | NULL    |                |
| country | varchar(32) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+


修改字段的名字 如 brand 修改为 pinpai

ALTER TABLE cars CHANGE brand pinpai VARCHAR(15) NOT NULL;

mysql> ALTER TABLE cars CHANGE brand pinpai VARCHAR(15) NOT NULL;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc cars;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| sid     | int(11)     | NO   | PRI | NULL    | auto_increment |
| pinpai  | varchar(15) | NO   |     | NULL    |                |
| country | varchar(32) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+