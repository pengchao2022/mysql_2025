-- 按照年龄从高到低进行排序 DESC 为降序

SELECT name, age FROM employee ORDER BY age DESC;

mysql> SELECT name, age FROM employee ORDER BY age DESC;
+-----------+------+
| name      | age  |
+-----------+------+
| 张三丰    |   84 |
| 冯唐      |   74 |
| 宋江      |   54 |
| 李开复    |   54 |
| 刘备      |   46 |
| 刘德华    |   40 |
| 王红梅    |   38 |
| 孙二娘    |   35 |
| 李清照    |   32 |
| 李思思    |   31 |
| 王雪花    |   31 |
| 范微微    |   31 |
| 马东东    |   28 |
| 李小凤    |   27 |
| 李瑶瑶    |   24 |
+-----------+------+
15 rows in set (0.00 sec)

-- 按照年龄从低到高进行排序 ASC 为升序

SELECT name, age FROM employee ORDER BY age ASC;

mysql> SELECT name, age FROM employee ORDER BY age ASC;
+-----------+------+
| name      | age  |
+-----------+------+
| 李瑶瑶    |   24 |
| 李小凤    |   27 |
| 马东东    |   28 |
| 李思思    |   31 |
| 王雪花    |   31 |
| 范微微    |   31 |
| 李清照    |   32 |
| 孙二娘    |   35 |
| 王红梅    |   38 |
| 刘德华    |   40 |
| 刘备      |   46 |
| 宋江      |   54 |
| 李开复    |   54 |
| 冯唐      |   74 |
| 张三丰    |   84 |
+-----------+------+
15 rows in set (0.00 sec)

-- 找出工资大于 50000 的并以升序排序
SELECT name, salary FROM employee WHERE salary > 50000 ORDER BY salary ASC;

mysql> SELECT name, salary FROM employee WHERE salary > 50000 ORDER BY salary ASC;
+-----------+----------+
| name      | salary   |
+-----------+----------+
| 王雪花    | 50000.66 |
| 李思思    | 56700.22 |
| 李开复    | 59996.64 |
| 王红梅    | 60000.15 |
| 刘德华    | 70000.55 |
| 刘备      | 77777.67 |
| 张三丰    | 79996.87 |
| 李清照    | 86700.44 |
| 李小凤    | 87400.96 |
| 孙二娘    | 89900.56 |
| 宋江      | 89996.87 |
+-----------+----------+
11 rows in set (0.00 sec)


-- 找出工资大于 50000 的并以降序排列，取出前 3名
SELECT name, salary FROM employee WHERE salary > 50000 ORDER BY salary DESC LIMIT 3;

mysql> SELECT name, salary FROM employee WHERE salary > 50000 ORDER BY salary DESC LIMIT 3;
+-----------+----------+
| name      | salary   |
+-----------+----------+
| 宋江      | 89996.87 |
| 孙二娘    | 89900.56 |
| 李小凤    | 87400.96 |
+-----------+----------+
3 rows in set (0.00 sec)


