# # # # #
# mysql #
# # # # #
default['mysql']['bind_address'] = '127.0.0.1'
default['mysql']['port'] = '3306'
default['mysql']['custom_cnf'] = []

default['mysql']['apt']['repo_uri'] = 'http://repo.mysql.com/apt/ubuntu/'
default['mysql']['apt']['components'] = ['mysql-5.7']

# # # # # # # #
# mysqlreport #
# # # # # # # #
default['mysql']['mysqlreport']['source'] = 'http://hackmysql.com/scripts/mysqlreport'

# # # # # # # #
# mysqltuner  #
# # # # # # # #
default['mysql']['mysqltuner']['source'] = 'https://raw.githubusercontent.com/major/MySQLTuner-perl/master/mysqltuner.pl'
