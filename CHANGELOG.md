# CHANGELOG for dop_mysql

This file is used to list changes made in each version of dop_mysql.

## 3.2.1 (July 21, 2016)

* remove cookbook attribute in logrotate_app (@sheuser)

## 3.1.0 (February 18, 2016)

* rewrite setting of encrypted databag attributes (compatibility to chef 12.7.2)

## 3.0.3:

* fix missing host in automysqlbackup setup

## 3.0.2:

## 3.0.1:

* matchers for ubuntu compatibility

## 3.0.0:

* major update to match refactored mysql/database cookbooks

## 2.1.1:

* make sure mysql is running (fix for ubuntu compatibility)
* update/integrate testsuites: foodcritic, rubocop, travis-ci

## 2.1.0:

* update/integrate testsuites: foodcritic, rubocop, travis-ci

## 2.0.2:

* fix missing attribute confd_dir
* bind to loop-back interface 127.0.0.1 by default

## 2.0.1:

* fix existence of /var/run/mysql on debian systems so that MySQL 5.6 can start up properly

## 2.0.0:

* fix cookbook for use with MySQL 5.6 as dotdeb switched recently
* fix cookbook for use with opscode mysql 2.0.0 (which is also a major overhaul)

## 1.0.0:

* Initial release of dop_mysql