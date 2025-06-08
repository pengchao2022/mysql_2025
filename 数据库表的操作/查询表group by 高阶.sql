-- 查询男女员工各有多少人 

SELECT gender 性别, COUNT(*) 人数 FROM employee GROUP BY gender;

mysql> SELECT gender 性别, COUNT(*) 人数 FROM employee GROUP BY gender;
+--------+--------+
| 性别   | 人数   |
+--------+--------+
| male   |      7 |
| female |      8 |
+--------+--------+
2 rows in set (0.00 sec)

-- 查询年龄大于 30 的男女员工各有多少人
SELECT gender 性别, COUNT(*) 人数 FROM employee WHERE age > 30 GROUP BY gender;

mysql> SELECT gender 性别, COUNT(*) 人数 FROM employee WHERE age > 30 GROUP BY gender;
+--------+--------+
| 性别   | 人数   |
+--------+--------+
| male   |      6 |
| female |      6 |
+--------+--------+
2 rows in set (0.00 sec)


-- 查询产品部员工的最高工资
SELECT department 部门, MAX(salary) 最高工资 FROM employee WHERE department = '产品部';

mysql> SELECT department 部门, MAX(salary) 最高工资 FROM employee WHERE department = '产品部';
+-----------+--------------+
| 部门      | 最高工资     |
+-----------+--------------+
| 产品部    |     87400.96 |
+-----------+--------------+
1 row in set (0.01 sec)

-- 查询平均薪水超过 60000 的部门

SELECT department 部门, AVG(salary) 平均薪水 FROM employee GROUP BY department HAVING 平均薪水 > 60000;

mysql> SELECT department 部门, AVG(salary) 平均薪水 FROM employee GROUP BY department HAVING 平均薪水 > 60000;
+-----------+--------------+
| 部门      | 平均薪水     |
+-----------+--------------+
| 市场部    | 69259.456667 |
| 研发部    | 84948.715000 |
| 管理层    | 89996.870000 |
| 销售      | 71700.330000 |
+-----------+--------------+
4 rows in set (0.00 sec)

-- 查询每个部门所有员工的姓名
SELECT department 部门, GROUP_CONCAT(name) 姓名 FROM employee GROUP BY department;

mysql> SELECT department 部门, GROUP_CONCAT(name) 姓名 FROM employee GROUP BY department;
+-----------+--------------------------------------+
| 部门      | 姓名                                 |
+-----------+--------------------------------------+
| IT部      | 李开复                               |
| 产品部    | 冯唐,王雪花,范微微,李小凤            |
| 市场部    | 刘备,刘德华,王红梅                   |
| 研发部    | 孙二娘,张三丰                        |
| 管理层    | 宋江                                 |
| 运营      | 马东东                               |
| 运营部    | 李瑶瑶                               |
| 销售      | 李清照,李思思                        |
+-----------+--------------------------------------+
8 rows in set (0.00 sec)

-- 统计同年出生的员工数量
SELECT YEAR(birth) 年份, COUNT(*) 出生人数 FROM employee GROUP BY YEAR(birth);

mysql> SELECT YEAR(birth) 年份, COUNT(*) 出生人数 FROM employee GROUP BY YEAR(birth);
+--------+--------------+
| 年份   | 出生人数     |
+--------+--------------+
|   1984 |            1 |
|   1990 |            2 |
|   1992 |            3 |
|   1993 |            2 |
|   1994 |            1 |
|   1998 |            1 |
|   2001 |            2 |
|   2002 |            1 |
|   2003 |            2 |
+--------+--------------+
9 rows in set (0.00 sec)



