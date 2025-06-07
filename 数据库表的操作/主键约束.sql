创建一个 customer 表 ，主键为 id 

CREATE TABLE customer(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(32), -- 32代表 32个字符
    gender BIT,
    age INT,
    birth DATE,       
    gpt DECIMAL(4, 2) 
) CHARACTER SET=utf8;

向 customer 中插入数据
INSERT INTO customer (name, age) VALUES ('jim lin', 34);

mysql> INSERT INTO customer (name, age) VALUES ('jim lin', 34);
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+----+---------+--------+------+-------+------+
| id | name    | gender | age  | birth | gpt  |
+----+---------+--------+------+-------+------+
|  1 | jim lin | NULL   |   34 | NULL  | NULL |
+----+---------+--------+------+-------+------+
1 row in set (0.00 sec)

继续插入测试ID 
INSERT INTO customer (id, name, birth) VALUES (100, '张飞', '2001-04-17');
mysql> select * from customer;
+-----+---------+--------+------+------------+------+
| id  | name    | gender | age  | birth      | gpt  |
+-----+---------+--------+------+------------+------+
|   1 | jim lin | NULL   |   34 | NULL       | NULL |
| 100 | 张飞    | NULL   | NULL | 2001-04-17 | NULL |
+-----+---------+--------+------+------------+------+
2 rows in set (0.00 sec)

在此插入新的数据，看ID 是否自增
INSERT INTO customer (name, birth) VALUES ('宋静', '2008-09-18');

mysql> INSERT INTO customer (name, birth) VALUES ('宋静', '2008-09-18');
Query OK, 1 row affected (0.00 sec)

mysql> select * from customer;
+-----+---------+--------+------+------------+------+
| id  | name    | gender | age  | birth      | gpt  |
+-----+---------+--------+------+------------+------+
|   1 | jim lin | NULL   |   34 | NULL       | NULL |
| 100 | 张飞    | NULL   | NULL | 2001-04-17 | NULL |
| 101 | 宋静    | NULL   | NULL | 2008-09-18 | NULL |
+-----+---------+--------+------+------------+------+
3 rows in set (0.00 sec)

可以看到 ID 从 100 自增到 101 

注意：
一张表 ，最多只有一个主键
非空，且唯一 的主键
主键类型 不一定为整型
