-- 查询每个部门的平均工资

SELECT department, AVG(salary) FROM employee GROUP BY department;

mysql> SELECT department, AVG(salary) FROM employee GROUP BY department;
+------------+--------------+
| department | AVG(salary)  |
+------------+--------------+
| IT部       | 59996.640000 |
| 产品部     | 58574.592500 |
| 市场部     | 69259.456667 |
| 研发部     | 84948.715000 |
| 管理层     | 89996.870000 |
| 运营       | 40000.660000 |
| 运营部     | 37890.580000 |
| 销售       | 71700.330000 |
+------------+--------------+
8 rows in set (0.00 sec)

-- 平均工资保留 小数点后 2位有效数字

SELECT department, FORMAT(AVG(salary), 2) FROM employee GROUP BY department;

mysql> SELECT department, FORMAT(AVG(salary), 2) FROM employee GROUP BY department;
+------------+------------------------+
| department | FORMAT(AVG(salary), 2) |
+------------+------------------------+
| IT部       | 59,996.64              |
| 产品部     | 58,574.59              |
| 市场部     | 69,259.46              |
| 研发部     | 84,948.72              |
| 管理层     | 89,996.87              |
| 运营       | 40,000.66              |
| 运营部     | 37,890.58              |
| 销售       | 71,700.33              |
+------------+------------------------+
8 rows in set (0.00 sec)

-- 可以再次优化下 显示内容 会更加可读 

SELECT department 部门, FORMAT(AVG(salary),2) 平均工资 FROM employee GROUP BY department;

mysql> SELECT department 部门, FORMAT(AVG(salary),2) 平均工资 FROM employee GROUP BY department;
+-----------+--------------+
| 部门      | 平均工资     |
+-----------+--------------+
| IT部      | 59,996.64    |
| 产品部    | 58,574.59    |
| 市场部    | 69,259.46    |
| 研发部    | 84,948.72    |
| 管理层    | 89,996.87    |
| 运营      | 40,000.66    |
| 运营部    | 37,890.58    |
| 销售      | 71,700.33    |
+-----------+--------------+
8 rows in set (0.00 sec)

-- 查询每个部门的最高工资
SELECT department 部门, FORMAT(MAX(salary), 2) 最高工资 FROM employee GROUP BY department;

mysql> SELECT department 部门, FORMAT(MAX(salary), 2) 最高工资 FROM employee GROUP BY department;
+-----------+--------------+
| 部门      | 最高工资     |
+-----------+--------------+
| IT部      | 59,996.64    |
| 产品部    | 87,400.96    |
| 市场部    | 77,777.67    |
| 研发部    | 89,900.56    |
| 管理层    | 89,996.87    |
| 运营      | 40,000.66    |
| 运营部    | 37,890.58    |
| 销售      | 86,700.44    |
+-----------+--------------+
8 rows in set (0.00 sec)

-- 查询每个部门的最低工资
SELECT department 部门, FORMAT(MIN(salary), 2) 最低工资 FROM employee GROUP BY department;

mysql> SELECT department 部门, FORMAT(MIN(salary), 2) 最低工资 FROM employee GROUP BY department;
+-----------+--------------+
| 部门      | 最低工资     |
+-----------+--------------+
| IT部      | 59,996.64    |
| 产品部    | 46,900.21    |
| 市场部    | 60,000.15    |
| 研发部    | 79,996.87    |
| 管理层    | 89,996.87    |
| 运营      | 40,000.66    |
| 运营部    | 37,890.58    |
| 销售      | 56,700.22    |
+-----------+--------------+
8 rows in set (0.00 sec)

-- 统计每个部门的员工数量
SELECT department 部门, COUNT(id) 员工数 FROM employee GROUP BY department;

mysql> SELECT department 部门, COUNT(id) 员工数 FROM employee GROUP BY department;
+-----------+-----------+
| 部门      | 员工数    |
+-----------+-----------+
| IT部      |         1 |
| 产品部    |         4 |
| 市场部    |         3 |
| 研发部    |         2 |
| 管理层    |         1 |
| 运营      |         1 |
| 运营部    |         1 |
| 销售      |         2 |
+-----------+-----------+
8 rows in set (0.00 sec)

-- 使用 name 统计员工数量

SELECT department 部门, COUNT(name) 员工数 FROM employee GROUP BY department;

mysql> SELECT department 部门, COUNT(name) 员工数 FROM employee GROUP BY department;
+-----------+-----------+
| 部门      | 员工数    |
+-----------+-----------+
| IT部      |         1 |
| 产品部    |         4 |
| 市场部    |         3 |
| 研发部    |         2 |
| 管理层    |         1 |
| 运营      |         1 |
| 运营部    |         1 |
| 销售      |         2 |
+-----------+-----------+
8 rows in set (0.00 sec)


