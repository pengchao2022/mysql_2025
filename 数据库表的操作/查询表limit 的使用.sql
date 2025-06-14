-- 显示前 5 条记录

SELECT * FROM employee LIMIT 5;

mysql> SELECT * FROM employee LIMIT 5;
+----+-----------+--------+------+------------+--------------+----------+------------+
| id | name      | gender | age  | department | region       | salary   | birth      |
+----+-----------+--------+------+------------+--------------+----------+------------+
|  1 | 宋江      | male   |   54 | 管理层     | 山东济南     | 89996.87 | 1992-06-03 |
|  2 | 刘备      | male   |   46 | 市场部     | 广东深圳     | 77777.67 | 1998-06-08 |
|  3 | 孙二娘    | female |   35 | 研发部     | 天津南开     | 89900.56 | 1994-07-06 |
|  4 | 张三丰    | male   |   84 | 研发部     | 上海杨浦     | 79996.87 | 1990-11-12 |
|  5 | 刘德华    | male   |   40 | 市场部     | 中国香港     | 70000.55 | 1992-08-03 |
+----+-----------+--------+------+------------+--------------+----------+------------+

-- 跳过前 2 条，显示接下来的 7条 记录
SELECT * FROM employee LIMIT 2, 7;

mysql> SELECT * FROM employee LIMIT 2, 7;
+----+-----------+--------+------+------------+--------------+----------+------------+
| id | name      | gender | age  | department | region       | salary   | birth      |
+----+-----------+--------+------+------------+--------------+----------+------------+
|  3 | 孙二娘    | female |   35 | 研发部     | 天津南开     | 89900.56 | 1994-07-06 |
|  4 | 张三丰    | male   |   84 | 研发部     | 上海杨浦     | 79996.87 | 1990-11-12 |
|  5 | 刘德华    | male   |   40 | 市场部     | 中国香港     | 70000.55 | 1992-08-03 |
|  6 | 李清照    | female |   32 | 销售       | 江苏南京     | 86700.44 | 1993-09-08 |
|  7 | 李开复    | male   |   54 | IT部       | 上海虹口     | 59996.64 | 1990-12-12 |
|  8 | 王红梅    | female |   38 | 市场部     | 北京顺义     | 60000.15 | 2002-08-01 |
|  9 | 李思思    | female |   31 | 销售       | 江苏徐州     | 56700.22 | 2003-09-12 |
+----+-----------+--------+------+------------+--------------+----------+------------+
7 rows in set (0.00 sec)

-- 跳过前 2 条，显示接下来的 2条记录
SELECT * FROM EMPLOYEE LIMIT 2, 2;

mysql> SELECT * FROM EMPLOYEE LIMIT 2, 2;
+----+-----------+--------+------+------------+--------------+----------+------------+
| id | name      | gender | age  | department | region       | salary   | birth      |
+----+-----------+--------+------+------------+--------------+----------+------------+
|  3 | 孙二娘    | female |   35 | 研发部     | 天津南开     | 89900.56 | 1994-07-06 |
|  4 | 张三丰    | male   |   84 | 研发部     | 上海杨浦     | 79996.87 | 1990-11-12 |
+----+-----------+--------+------+------------+--------------+----------+------------+
2 rows in set (0.00 sec)

-- 查询薪资最高的 5个员工
SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 5;

mysql> SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 5;
+-----------+----------+
| name      | salary   |
+-----------+----------+
| 宋江      | 89996.87 |
| 孙二娘    | 89900.56 |
| 李小凤    | 87400.96 |
| 李清照    | 86700.44 |
| 张三丰    | 79996.87 |
+-----------+----------+
5 rows in set (0.00 sec)


