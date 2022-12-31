Microsoft Windows [Version 10.0.19045.2364]
(c) Microsoft Corporation. All rights reserved.

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 10
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
|   data             |
| aliakber           |
| class              |
| db_admin           |
| e_comerce          |
| info               |
| information        |
| information_schema |
| mycrud             |
| mysql              |
| performance_schema |
| phpmyadmin         |
| project,shop       |
| project1           |
| role               |
| snf                |
| test               |
| testdatabase       |
| usama              |
| user db            |
| zm                 |
+--------------------+
21 rows in set (0.010 sec)

MariaDB [(none)]> create database zakaria
    ->
    -> create database zakaria;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'create database zakaria' at line 3
MariaDB [(none)]> create database zakaria
    -> create database zakaria
    -> create database zakaria;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'create database zakaria
create database zakaria' at line 2
MariaDB [(none)]> create database zakaria;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> use zakaria;
Database changed
MariaDB [zakaria]> create table tbl(
    -> id int primary key auto-increment,
    -> name varchar(40) not null,
    -> address varchar(40) not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'auto-increment,
name varchar(40) not null,
address varchar(40) not null)' at line 2
MariaDB [zakaria]> create table tbl(
    -> id int primary key auto-increment,
    -> name varchar(40) not null,
    -> address varchar(40) not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'auto-increment,
name varchar(40) not null,
address varchar(40) not null)' at line 2
MariaDB [zakaria]> create table tbl(
    -> id int primary key auto-increment,
    -> name varchar(40) not null,
    -> address varchar(40) not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'auto-increment,
name varchar(40) not null,
address varchar(40) not null)' at line 2
MariaDB [zakaria]> create table tbl(
    -> id int primary key auto_increment,
    -> name varchar(40) not null,
    -> address varchar(40) not null);
Query OK, 0 rows affected (0.160 sec)

MariaDB [zakaria]> discribe tbl;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'discribe tbl' at line 1
MariaDB [zakaria]> describe tbl;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| id      | int(11)     | NO   | PRI | NULL    | auto_increment |
| name    | varchar(40) | NO   |     | NULL    |                |
| address | varchar(40) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
3 rows in set (0.009 sec)

MariaDB [zakaria]> insert into tbl values(null,
    -> "usama","ffduyuuuu");
Query OK, 1 row affected (0.082 sec)

MariaDB [zakaria]> describe tbl;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| id      | int(11)     | NO   | PRI | NULL    | auto_increment |
| name    | varchar(40) | NO   |     | NULL    |                |
| address | varchar(40) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
3 rows in set (0.008 sec)

MariaDB [zakaria]> select * from tbl;
+----+-------+-----------+
| id | name  | address   |
+----+-------+-----------+
|  1 | usama | ffduyuuuu |
+----+-------+-----------+
1 row in set (0.000 sec)

MariaDB [zakaria]> truncate table tbl;
Query OK, 0 rows affected (0.212 sec)

MariaDB [zakaria]> select * from tbl;
Empty set (0.000 sec)

MariaDB [zakaria]> create table tbl(
    -> id int primary key auto_increment,
    -> name varchar(40) not null,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
MariaDB [zakaria]> insert into tbl values(null,
    -> "Usama","karachi"),(null,"Talha","India"),(null,"Waqar","Balochistan");
Query OK, 3 rows affected (0.115 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [zakaria]> select * from tbl;
+----+-------+-------------+
| id | name  | address     |
+----+-------+-------------+
|  1 | Usama | karachi     |
|  2 | Talha | India       |
|  3 | Waqar | Balochistan |
+----+-------+-------------+
3 rows in set (0.000 sec)

MariaDB [zakaria]>