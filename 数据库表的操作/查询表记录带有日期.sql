-- 创建一个新的数据库
CREATE DATABASE ibm_db CHARACTER SET utf8;

mysql> CREATE DATABASE ibm_db CHARACTER SET utf8;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| allen_25           |
| allen_production   |
| crm                |
| ibm_db             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
8 rows in set (0.08 sec)

-- 创建一个新的员工表employee 并带有出生日期
CREATE TABLE employee(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    gender ENUM('male', 'female', 'other'),
    age TINYINT,
    department VARCHAR(20),
    region VARCHAR(20),
    salary DOUBLE(7, 2),
    birth DATE
)CHARACTER SET=utf8;

mysql> desc employee;
+------------+-------------------------------+------+-----+---------+----------------+
| Field      | Type                          | Null | Key | Default | Extra          |
+------------+-------------------------------+------+-----+---------+----------------+
| id         | int(11)                       | NO   | PRI | NULL    | auto_increment |
| name       | varchar(20)                   | YES  |     | NULL    |                |
| gender     | enum('male','female','other') | YES  |     | NULL    |                |
| age        | tinyint(4)                    | YES  |     | NULL    |                |
| department | varchar(20)                   | YES  |     | NULL    |                |
| region     | varchar(20)                   | YES  |     | NULL    |                |
| salary     | double(7,2)                   | YES  |     | NULL    |                |
| birth      | date                          | YES  |     | NULL    |                |
+------------+-------------------------------+------+-----+---------+----------------+
8 rows in set (0.02 sec)

-- 向表中插入数据
INSERT INTO employee (name, gender, age, department, region, salary, birth) VALUES ('宋江', 'male', 54, '管理层', '山东济南', 89996.87, '1992-06-03'),
('刘备', 'male', 46, '市场部', '广东深圳', 77777.67, '1998-06-08'), ('孙二娘', 'female', 35, '研发部', '天津南开', 89900.56, '1994-07-06');

INSERT INTO employee (name, gender, age, department, region, salary, birth) VALUES ('张三丰', 'male', 84, '研发部', '上海杨浦', 79996.87, '1990-11-12'),
('刘德华', 'male', 40, '市场部', '中国香港', 70000.55, '1992-08-03'), ('李清照', 'female', 32, '销售', '江苏南京', 86700.44, '1993-09-08');

INSERT INTO employee (name, gender, age, department, region, salary, birth) VALUES ('李开复', 'male', 54, 'IT部', '上海虹口', 59996.64, '1990-12-12'),
('王红梅', 'female', 38, '市场部', '北京顺义', 60000.15, '2002-08-01'), ('李思思', 'female', 31, '销售', '江苏徐州',56700.22, '2003-09-12');

INSERT INTO employee (name, gender, age, department, region, salary, birth) VALUES ('冯唐', 'male', 74, '产品部', '上海闵行', 49996.54, '1992-09-13'),
('王雪花', 'female', 31, '产品部', '北京朝阳', 50000.66, '1993-09-23'), ('范微微', 'female', 31, '产品部', '江苏泰州',46900.21, '2001-12-24');

INSERT INTO employee (name, gender, age, department, region, salary, birth) VALUES ('李瑶瑶', 'female', 24, '运营部', '上海闵行', 37890.58, '2003-12-17'),
('马东东', 'male', 28, '运营', '北京朝阳', 40000.66, '1984-09-07'), ('李小凤', 'female', 27, '产品部', '江苏泰州',87400.96, '2001-12-12');

新的表格：
mysql> select * from employee;
+----+-----------+--------+------+------------+--------------+----------+------------+
| id | name      | gender | age  | department | region       | salary   | birth      |
+----+-----------+--------+------+------------+--------------+----------+------------+
|  1 | 宋江      | male   |   54 | 管理层     | 山东济南     | 89996.87 | 1992-06-03 |
|  2 | 刘备      | male   |   46 | 市场部     | 广东深圳     | 77777.67 | 1998-06-08 |
|  3 | 孙二娘    | female |   35 | 研发部     | 天津南开     | 89900.56 | 1994-07-06 |
|  4 | 张三丰    | male   |   84 | 研发部     | 上海杨浦     | 79996.87 | 1990-11-12 |
|  5 | 刘德华    | male   |   40 | 市场部     | 中国香港     | 70000.55 | 1992-08-03 |
|  6 | 李清照    | female |   32 | 销售       | 江苏南京     | 86700.44 | 1993-09-08 |
|  7 | 李开复    | male   |   54 | IT部       | 上海虹口     | 59996.64 | 1990-12-12 |
|  8 | 王红梅    | female |   38 | 市场部     | 北京顺义     | 60000.15 | 2002-08-01 |
|  9 | 李思思    | female |   31 | 销售       | 江苏徐州     | 56700.22 | 2003-09-12 |
| 10 | 冯唐      | male   |   74 | 产品部     | 上海闵行     | 49996.54 | 1992-09-13 |
| 11 | 王雪花    | female |   31 | 产品部     | 北京朝阳     | 50000.66 | 1993-09-23 |
| 12 | 范微微    | female |   31 | 产品部     | 江苏泰州     | 46900.21 | 2001-12-24 |
| 13 | 李瑶瑶    | female |   24 | 运营部     | 上海闵行     | 37890.58 | 2003-12-17 |
| 14 | 马东东    | male   |   28 | 运营       | 北京朝阳     | 40000.66 | 1984-09-07 |
| 15 | 李小凤    | female |   27 | 产品部     | 江苏泰州     | 87400.96 | 2001-12-12 |
+----+-----------+--------+------+------------+--------------+----------+------------+
15 rows in set (0.00 sec)

-- 日期查询
-- 查询1990 年以后出生的所有员工
SELECT name, birth FROM employee WHERE birth > '1990-01-01';

mysql> SELECT name, birth FROM employee WHERE birth > '1990-01-01';
+-----------+------------+
| name      | birth      |
+-----------+------------+
| 宋江      | 1992-06-03 |
| 刘备      | 1998-06-08 |
| 孙二娘    | 1994-07-06 |
| 张三丰    | 1990-11-12 |
| 刘德华    | 1992-08-03 |
| 李清照    | 1993-09-08 |
| 李开复    | 1990-12-12 |
| 王红梅    | 2002-08-01 |
| 李思思    | 2003-09-12 |
| 冯唐      | 1992-09-13 |
| 王雪花    | 1993-09-23 |
| 范微微    | 2001-12-24 |
| 李瑶瑶    | 2003-12-17 |
| 李小凤    | 2001-12-12 |
+-----------+------------+
14 rows in set (0.00 sec)

-- 找出生日在 1990 到 2000 年之间的员工
SELECT name, birth FROM employee WHERE birth > '1990-01-01' and birth < '2000-01-01';

mysql> SELECT name, birth FROM employee WHERE birth > '1990-01-01' and birth < '2000-01-01';
+-----------+------------+
| name      | birth      |
+-----------+------------+
| 宋江      | 1992-06-03 |
| 刘备      | 1998-06-08 |
| 孙二娘    | 1994-07-06 |
| 张三丰    | 1990-11-12 |
| 刘德华    | 1992-08-03 |
| 李清照    | 1993-09-08 |
| 李开复    | 1990-12-12 |
| 冯唐      | 1992-09-13 |
| 王雪花    | 1993-09-23 |
+-----------+------------+
9 rows in set (0.01 sec)

-- 查询 1990 年出生的所有员工
SELECT name, birth FROM employee WHERE YEAR(birth) = 1990;

mysql> SELECT name, birth FROM employee WHERE YEAR(birth) = 1990;
+-----------+------------+
| name      | birth      |
+-----------+------------+
| 张三丰    | 1990-11-12 |
| 李开复    | 1990-12-12 |
+-----------+------------+
2 rows in set (0.00 sec)

-- 查询所有摩羯座的员工
SELECT name, birth FROM employee
WHERE (MONTH(birth) = 12 AND DAY(birth) > 22) OR (MONTH(birth) = 1 AND DAY(birth) < 19);

mysql> SELECT name, birth FROM employee WHERE (MONTH(birth) = 12 AND DAY(birth) > 22) OR (MONTH(birth) = 1 AND DAY(birth) < 19);
+-----------+------------+
| name      | birth      |
+-----------+------------+
| 范微微    | 2001-12-24 |
+-----------+------------+
1 row in set (0.00 sec)






