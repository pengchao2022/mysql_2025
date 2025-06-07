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

创建一个新的数据库
mysql> create database allen_25;
Query OK, 1 row affected (0.01 sec)

查看创建好的数据库编码类型
mysql> show create database allen_25;
+----------+---------------------------------------------------------------------+
| Database | Create Database                                                     |
+----------+---------------------------------------------------------------------+
| allen_25 | CREATE DATABASE `allen_25` /*!40100 DEFAULT CHARACTER SET latin1 */ |
+----------+---------------------------------------------------------------------+
1 row in set (0.00 sec)

创建一个编码类型为 utf8 的数据库
mysql> create database allen_kay_29 character set utf8;
Query OK, 1 row affected (0.01 sec)

mysql> show create database allen_kay_29;
+--------------+-----------------------------------------------------------------------+
| Database     | Create Database                                                       |
+--------------+-----------------------------------------------------------------------+
| allen_kay_29 | CREATE DATABASE `allen_kay_29` /*!40100 DEFAULT CHARACTER SET utf8 */ |
+--------------+-----------------------------------------------------------------------+
1 row in set (0.00 sec)


创建 一个编码类型为 gbk 的数据库
mysql> create database students character set gbk;
Query OK, 1 row affected (0.01 sec)

mysql> show create database students;
+----------+------------------------------------------------------------------+
| Database | Create Database                                                  |
+----------+------------------------------------------------------------------+
| students | CREATE DATABASE `students` /*!40100 DEFAULT CHARACTER SET gbk */ |
+----------+------------------------------------------------------------------+
1 row in set (0.00 sec)


创建一个指定编码的数据库
mysql> create database if not exists students character set utf8;
Query OK, 1 row affected, 1 warning (0.00 sec)

修改数据库的编码形式 ，如 从 gbk 修改到 utf8 
mysql> alter database students character set utf8;
Query OK, 1 row affected (0.00 sec)

mysql> show create database students;
+----------+-------------------------------------------------------------------+
| Database | Create Database                                                   |
+----------+-------------------------------------------------------------------+
| students | CREATE DATABASE `students` /*!40100 DEFAULT CHARACTER SET utf8 */ |
+----------+-------------------------------------------------------------------+
1 row in set (0.00 sec)


删除数据库使用 drop 命令
mysql> drop database allen_kay_29;
Query OK, 0 rows affected (0.03 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| allen_25           |
| mysql              |
| performance_schema |
| students           |
| sys                |
+--------------------+
6 rows in set (0.01 sec)


使用数据库 用 use
mysql> use allen_25;
Database changed
mysql> select database();
+------------+
| database() |
+------------+
| allen_25   |
+------------+
1 row in set (0.00 sec)

