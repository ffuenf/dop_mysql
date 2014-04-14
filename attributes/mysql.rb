# # # # #
# mysql #
# # # # #
default['mysql']['server_debian_password'] = node['dop_mysql']['databag']['debian']
default['mysql']['server_root_password'] = node['dop_mysql']['databag']['root']

default['mysql']['confd_dir'] = "/etc/mysql/conf.d"

default['mysql']['custom_cnf']['bind-address'] = "127.0.0.1"

default['mysql']['tunable']['key_buffer_size'] = "8M"
default['mysql']['tunable']['max_allowed_packet'] = "32M"
default['mysql']['tunable']['max_connect_errors'] = 100000
default['mysql']['tunable']['max_connect_errors'] = 100000
default['mysql']['tunable']['back_log'] = 2000
default['mysql']['tunable']['wait_timeout'] = 300
default['mysql']['tunable']['sort_buffer_size'] = "1M"
default['mysql']['tunable']['read_buffer_size'] = "1M"
default['mysql']['tunable']['join_buffer_size'] = "8M"
default['mysql']['tunable']['tmp_table_size'] = "128M"
default['mysql']['tunable']['query_cache_limit'] = "4M"
default['mysql']['tunable']['query_cache_size'] = "256M"
default['mysql']['tunable']['max_connections'] = 150
default['mysql']['tunable']['max_connections'] = 150
default['mysql']['tunable']['thread_cache_size'] = 64
default['mysql']['tunable']['open-files-limit'] = 65535
default['mysql']['tunable']['table_open_cache'] = 4000
default['mysql']['tunable']['innodb_lock_wait_timeout'] = 300
default['mysql']['tunable']['innodb_buffer_pool_size'] = "256M"
default['mysql']['tunable']['innodb_additional_mem_pool_size'] = "24M"