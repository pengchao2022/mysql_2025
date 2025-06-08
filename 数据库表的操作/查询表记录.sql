-- 创建一个新的员工表 employee
CREATE TABLE employee(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    gender ENUM('male', 'female', 'other'),
    age TINYINT,
    department VARCHAR(20),
    region VARCHAR(20),
    salary DOUBLE(7, 2)

)CHARACTER SET=utf8;

成功后表的结构

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
+------------+-------------------------------+------+-----+---------+----------------+
7 rows in set (0.01 sec)

-- 批量向employee 表中插入数据
INSERT INTO employee (name, gender, age, department, region, salary) VALUES ('宋江', 'male', 54, '管理层', '山东济南', 89996.87),
('刘备', 'male', 46, '市场部', '广东深圳', 77777.67), ('孙二娘', 'female', 35, '研发部', '天津南开', 89900.56);

INSERT INTO employee (name, gender, age, department, region, salary) VALUES ('张三丰', 'male', 84, '研发部', '上海杨浦', 79996.87),
('刘德华', 'male', 40, '市场部', '中国香港', 70000.55), ('李清照', 'female', 32, '销售', '江苏南京', 86700.44);

INSERT INTO employee (name, gender, age, department, region, salary) VALUES ('李开复', 'male', 54, 'IT部', '上海虹口', 59996.64),
('王红梅', 'female', 38, '市场部', '北京顺义', 60000.15), ('李思思', 'female', 31, '销售', '江苏徐州',56700.22);

INSERT INTO employee (name, gender, age, department, region, salary) VALUES ('冯唐', 'male', 74, '产品部', '上海闵行', 49996.54),
('王雪花', 'female', 31, '产品部', '北京朝阳', 50000.66), ('范微微', 'female', 31, '产品部', '江苏泰州',46900.21);

INSERT INTO employee (name, gender, age, department, region, salary) VALUES ('李瑶瑶', 'female', 24, '运营部', '上海闵行', 37890.58),
('马东东', 'male', 28, '运营', '北京朝阳', 40000.66), ('李小凤', 'female', 27, '产品部', '江苏泰州',87400.96);


mysql> select * from employee;
+----+-----------+--------+------+------------+--------------+----------+
| id | name      | gender | age  | department | region       | salary   |
+----+-----------+--------+------+------------+--------------+----------+
|  1 | 宋江      | male   |   54 | 管理层     | 山东济南     | 89996.87 |
|  2 | 刘备      | male   |   46 | 市场部     | 广东深圳     | 77777.67 |
|  3 | 孙二娘    | female |   35 | 研发部     | 天津南开     | 89900.56 |
|  4 | 张三丰    | male   |   84 | 研发部     | 上海杨浦     | 79996.87 |
|  5 | 刘德华    | male   |   40 | 市场部     | 中国香港     | 70000.55 |
|  6 | 李清照    | female |   32 | 销售       | 江苏南京     | 86700.44 |
|  7 | 李开复    | male   |   54 | IT部       | 上海虹口     | 59996.64 |
|  8 | 王红梅    | female |   38 | 市场部     | 北京顺义     | 60000.15 |
|  9 | 李思思    | female |   31 | 销售       | 江苏徐州     | 56700.22 |
| 10 | 冯唐      | male   |   74 | 产品部     | 上海闵行     | 49996.54 |
| 11 | 王雪花    | female |   31 | 产品部     | 北京朝阳     | 50000.66 |
| 12 | 范微微    | female |   31 | 产品部     | 江苏泰州     | 46900.21 |
+----+-----------+--------+------+------------+--------------+----------+
12 rows in set (0.00 sec)

-- 查询表里面所有的字段
mysql> select * from employee;
+----+-----------+--------+------+------------+--------------+----------+
| id | name      | gender | age  | department | region       | salary   |
+----+-----------+--------+------+------------+--------------+----------+
|  1 | 宋江      | male   |   54 | 管理层     | 山东济南     | 89996.87 |
|  2 | 刘备      | male   |   46 | 市场部     | 广东深圳     | 77777.67 |
|  3 | 孙二娘    | female |   35 | 研发部     | 天津南开     | 89900.56 |
|  4 | 张三丰    | male   |   84 | 研发部     | 上海杨浦     | 79996.87 |
|  5 | 刘德华    | male   |   40 | 市场部     | 中国香港     | 70000.55 |
|  6 | 李清照    | female |   32 | 销售       | 江苏南京     | 86700.44 |
|  7 | 李开复    | male   |   54 | IT部       | 上海虹口     | 59996.64 |
|  8 | 王红梅    | female |   38 | 市场部     | 北京顺义     | 60000.15 |
|  9 | 李思思    | female |   31 | 销售       | 江苏徐州     | 56700.22 |
| 10 | 冯唐      | male   |   74 | 产品部     | 上海闵行     | 49996.54 |
| 11 | 王雪花    | female |   31 | 产品部     | 北京朝阳     | 50000.66 |
| 12 | 范微微    | female |   31 | 产品部     | 江苏泰州     | 46900.21 |
+----+-----------+--------+------+------------+--------------+----------+
12 rows in set (0.00 sec)

-- 查询名字 对应的薪资
SELECT name, salary FROM employee;

mysql> SELECT name, salary FROM employee;
+-----------+----------+
| name      | salary   |
+-----------+----------+
| 宋江      | 89996.87 |
| 刘备      | 77777.67 |
| 孙二娘    | 89900.56 |
| 张三丰    | 79996.87 |
| 刘德华    | 70000.55 |
| 李清照    | 86700.44 |
| 李开复    | 59996.64 |
| 王红梅    | 60000.15 |
| 李思思    | 56700.22 |
| 冯唐      | 49996.54 |
| 王雪花    | 50000.66 |
| 范微微    | 46900.21 |
+-----------+----------+
12 rows in set (0.00 sec)

-- where 语句的使用
-- 举例1 ，找出年龄大于30岁的员工的集合
SELECT * FROM employee WHERE age > 30;

mysql> SELECT * FROM employee WHERE age > 30;
+----+-----------+--------+------+------------+--------------+----------+
| id | name      | gender | age  | department | region       | salary   |
+----+-----------+--------+------+------------+--------------+----------+
|  1 | 宋江      | male   |   54 | 管理层     | 山东济南     | 89996.87 |
|  2 | 刘备      | male   |   46 | 市场部     | 广东深圳     | 77777.67 |
|  3 | 孙二娘    | female |   35 | 研发部     | 天津南开     | 89900.56 |
|  4 | 张三丰    | male   |   84 | 研发部     | 上海杨浦     | 79996.87 |
|  5 | 刘德华    | male   |   40 | 市场部     | 中国香港     | 70000.55 |
|  6 | 李清照    | female |   32 | 销售       | 江苏南京     | 86700.44 |
|  7 | 李开复    | male   |   54 | IT部       | 上海虹口     | 59996.64 |
|  8 | 王红梅    | female |   38 | 市场部     | 北京顺义     | 60000.15 |
|  9 | 李思思    | female |   31 | 销售       | 江苏徐州     | 56700.22 |
| 10 | 冯唐      | male   |   74 | 产品部     | 上海闵行     | 49996.54 |
| 11 | 王雪花    | female |   31 | 产品部     | 北京朝阳     | 50000.66 |
| 12 | 范微微    | female |   31 | 产品部     | 江苏泰州     | 46900.21 |
+----+-----------+--------+------+------------+--------------+----------+
12 rows in set (0.00 sec)

-- 举例2 ， 选出薪资超过70000 的员工
SELECT * FROM employee WHERE salary > 70000;

mysql> SELECT * FROM employee WHERE salary > 70000;
+----+-----------+--------+------+------------+--------------+----------+
| id | name      | gender | age  | department | region       | salary   |
+----+-----------+--------+------+------------+--------------+----------+
|  1 | 宋江      | male   |   54 | 管理层     | 山东济南     | 89996.87 |
|  2 | 刘备      | male   |   46 | 市场部     | 广东深圳     | 77777.67 |
|  3 | 孙二娘    | female |   35 | 研发部     | 天津南开     | 89900.56 |
|  4 | 张三丰    | male   |   84 | 研发部     | 上海杨浦     | 79996.87 |
|  5 | 刘德华    | male   |   40 | 市场部     | 中国香港     | 70000.55 |
|  6 | 李清照    | female |   32 | 销售       | 江苏南京     | 86700.44 |
| 15 | 李小凤    | female |   27 | 产品部     | 江苏泰州     | 87400.96 |
+----+-----------+--------+------+------------+--------------+----------+
7 rows in set (0.00 sec)

-- 举例3 ，查询年龄在 30 到 50 之间的员工
SELECT * FROM employee WHERE age BETWEEN 30 AND 50;

mysql> SELECT * FROM employee WHERE age BETWEEN 30 AND 50;
+----+-----------+--------+------+------------+--------------+----------+
| id | name      | gender | age  | department | region       | salary   |
+----+-----------+--------+------+------------+--------------+----------+
|  2 | 刘备      | male   |   46 | 市场部     | 广东深圳     | 77777.67 |
|  3 | 孙二娘    | female |   35 | 研发部     | 天津南开     | 89900.56 |
|  5 | 刘德华    | male   |   40 | 市场部     | 中国香港     | 70000.55 |
|  6 | 李清照    | female |   32 | 销售       | 江苏南京     | 86700.44 |
|  8 | 王红梅    | female |   38 | 市场部     | 北京顺义     | 60000.15 |
|  9 | 李思思    | female |   31 | 销售       | 江苏徐州     | 56700.22 |
| 11 | 王雪花    | female |   31 | 产品部     | 北京朝阳     | 50000.66 |
| 12 | 范微微    | female |   31 | 产品部     | 江苏泰州     | 46900.21 |
+----+-----------+--------+------+------------+--------------+----------+
8 rows in set (0.00 sec)

-- 举例 In 的使用 
SELECT * FROM employee WHERE age IN (35, 31, 80); -- 找出年龄 为 35， 31， 80 的员工

mysql> SELECT * FROM employee WHERE age IN (35, 31, 80);
+----+-----------+--------+------+------------+--------------+----------+
| id | name      | gender | age  | department | region       | salary   |
+----+-----------+--------+------+------------+--------------+----------+
|  3 | 孙二娘    | female |   35 | 研发部     | 天津南开     | 89900.56 |
|  9 | 李思思    | female |   31 | 销售       | 江苏徐州     | 56700.22 |
| 11 | 王雪花    | female |   31 | 产品部     | 北京朝阳     | 50000.66 |
| 12 | 范微微    | female |   31 | 产品部     | 江苏泰州     | 46900.21 |
+----+-----------+--------+------+------------+--------------+----------+
4 rows in set (0.01 sec)

-- 举例 查询特定员工姓名的信息
SELECT * FROM employee WHERE name='宋江';

mysql> SELECT * FROM employee WHERE name='宋江';
+----+--------+--------+------+------------+--------------+----------+
| id | name   | gender | age  | department | region       | salary   |
+----+--------+--------+------+------------+--------------+----------+
|  1 | 宋江   | male   |   54 | 管理层     | 山东济南     | 89996.87 |
+----+--------+--------+------+------------+--------------+----------+
1 row in set (0.00 sec)

-- 举例 查询宋江的年龄和部门
SELECT name, age, department FROM employee WHERE name='宋江';

mysql> SELECT name, age, department FROM employee WHERE name='宋江';
+--------+------+------------+
| name   | age  | department |
+--------+------+------------+
| 宋江   |   54 | 管理层     |
+--------+------+------------+
1 row in set (0.00 sec)

-- 举例查询宋江的工资
SELECT name, salary FROM employee WHERE name='宋江';

mysql> SELECT name, salary FROM employee WHERE name='宋江';
+--------+----------+
| name   | salary   |
+--------+----------+
| 宋江   | 89996.87 |
+--------+----------+
1 row in set (0.00 sec)

-- 举例查询宋江的地区
SELECT name, region FROM employee WHERE name='宋江';

mysql> SELECT name, region FROM employee WHERE name='宋江';
+--------+--------------+
| name   | region       |
+--------+--------------+
| 宋江   | 山东济南     |
+--------+--------------+
1 row in set (0.00 sec)

-- 举例 查询姓“李”的员工的信息
SELECT name, age FROM employee WHERE name LIKE '李%';

mysql> SELECT name, age FROM employee WHERE name LIKE '李%';
+-----------+------+
| name      | age  |
+-----------+------+
| 李清照    |   32 |
| 李开复    |   54 |
| 李思思    |   31 |
| 李瑶瑶    |   24 |
| 李小凤    |   27 |
+-----------+------+
5 rows in set (0.00 sec)

--举例 找出名字以 "华" 结尾的员工姓名
SELECT name FROM employee WHERE name LIKE '%华';

mysql> SELECT name FROM employee WHERE name LIKE '%华';
+-----------+
| name      |
+-----------+
| 刘德华    |
+-----------+
1 row in set (0.00 sec)


