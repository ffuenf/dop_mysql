# # # # #
# mysql #
# # # # #
default['mysql']['bind_address'] = '127.0.0.1'
default['mysql']['port'] = '3306'
default['mysql']['dotdeb']['server']['name'] = 'mysql-server-5.6'
default['mysql']['dotdeb']['client']['name'] = %w(mysql-client-5.6 libmysqlclient-dev)
default['mysql']['custom_cnf'] = []

# # # # # # # #
# mysqlreport #
# # # # # # # #
default['mysql']['mysqlreport']['source'] = 'http://hackmysql.com/scripts/mysqlreport'

# # # # # # # #
# mysqltuner  #
# # # # # # # #
default['mysql']['mysqltuner']['source'] = 'https://raw.githubusercontent.com/major/MySQLTuner-perl/master/mysqltuner.pl'
