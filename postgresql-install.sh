#!/bin/bash
#安装依赖以及postgresql13.4
rpm -Uvh postgresql-rpm/* --nodeps --force
#初始化数据库
/usr/pgsql-13/bin/postgresql-13-setup initdb
#设置开机自启
systemctl enable postgresql-13
#启动postgresql
systemctl start postgresql-13 
