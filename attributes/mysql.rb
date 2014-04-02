# # # # #
# mysql #
# # # # #
default['mysql']['server_debian_password'] = node['dop_mysql']['databag']['debian']
default['mysql']['server_root_password']   = node['dop_mysql']['databag']['root']

node.default['mysql']['my_cnf']['client']['port'] = node['mysql']['port']
node.default['mysql']['my_cnf']['client']['socket'] = node['mysql']['socket']
node.default['mysql']['my_cnf']['mysqld_safe']['log-error'] = "/var/log/mysqld.log"
node.default['mysql']['my_cnf']['mysqld_safe']['pid-file'] = "/var/run/mysqld/mysqld.pid"

node.default['mysql']['tunable']['key_buffer_size'] = "8M"
node.default['mysql']['tunable']['max_allowed_packet'] = "32M"
node.default['mysql']['tunable']['max_connect_errors'] = 100000
node.default['mysql']['tunable']['max_connect_errors'] = 100000
node.default['mysql']['tunable']['back_log'] = 2000
node.default['mysql']['tunable']['wait_timeout'] = 300
node.default['mysql']['tunable']['sort_buffer_size'] = "1M"
node.default['mysql']['tunable']['read_buffer_size'] = "1M"
node.default['mysql']['tunable']['join_buffer_size'] = "8M"
node.default['mysql']['tunable']['tmp_table_size'] = "128M"
node.default['mysql']['tunable']['query_cache_limit'] = "4M"
node.default['mysql']['tunable']['query_cache_size'] = "256M"
node.default['mysql']['tunable']['max_connections'] = 150
node.default['mysql']['tunable']['max_connections'] = 150
node.default['mysql']['tunable']['thread_cache_size'] = 64
node.default['mysql']['tunable']['open-files-limit'] = 65535
node.default['mysql']['tunable']['table_open_cache'] = 4000
node.default['mysql']['tunable']['innodb_lock_wait_timeout'] = 300
node.default['mysql']['tunable']['innodb_buffer_pool_size'] = "256M"
node.default['mysql']['tunable']['innodb_additional_mem_pool_size'] = "24M"