清理屏幕 使用：
mysql> system clear

显示当前时间命令：

mysql> select now();
+---------------------+
| now()               |
+---------------------+
| 2025-06-07 16:01:24 |
+---------------------+
1 row in set (0.00 sec)

显示当前所使用的数据库名称：

mysql> select database();
+------------+
| database() |
+------------+
| NULL       |      ------------ NULL 表示没有使用任何数据库
+------------+
1 row in set (0.00 sec)


查看当前所有数据库名称：

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

