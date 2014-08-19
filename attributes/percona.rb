# # # # #
# mysql #
# # # # #
set['percona']['server']['debian_username'] = 'spud'

default['percona']['server']['max_connections'] = 4_096
default['percona']['server']['key_buffer_size'] = '256M'
default['percona']['server']['join_buffer_size'] = '4M'
default['percona']['server']['read_buffer_size'] = '4M'
default['percona']['server']['read_rnd_buffer_size'] = '4M'
default['percona']['server']['table_open_cache'] = 8_192
default['percona']['server']['thread_cache_size'] = 512
default['percona']['server']['wait_timeout'] = 150
default['percona']['server']['interactive_timeout'] = 150
default['percona']['server']['connect_timeout'] = 60
default['percona']['server']['tmp_table_size'] = '384M'
default['percona']['server']['max_heap_table_size'] = '384M'
default['percona']['server']['max_allowed_packet'] = '1024M'
default['percona']['server']['query_cache_limit'] = '4M'
default['percona']['server']['query_cache_size'] = '128M'
default['percona']['server']['query_cache_type'] = 1
default['percona']['server']['query_prealloc_size'] = 16_384
default['percona']['server']['query_alloc_block_size'] = 16_384
default['percona']['server']['innodb_thread_concurrency'] = 24
default['percona']['server']['innodb_buffer_pool_size'] = '256M'
default['percona']['server']['innodb_log_file_size'] = '384M'
default['percona']['server']['innodb_log_buffer_size'] = '24M'
default['percona']['server']['innodb_additional_mem_pool_size'] = '16M'
default['percona']['server']['innodb_io_capacity'] = 800
default['percona']['server']['innodb_concurrency_tickets'] = 900
default['percona']['server']['innodb_flush_neighbor_pages'] = 'cont'
default['percona']['server']['innodb_lock_wait_timeout'] = 75
default['percona']['server']['innodb_flush_method'] = 'O_DIRECT'
default['percona']['server']['innodb_flush_log_at_trx_commit'] = 1
default['percona']['server']['key_buffer_size'] = '128M'
default['percona']['server']['sort_buffer_size'] = '128M'
default['percona']['server']['read_buffer_size'] = '2M'
default['percona']['server']['write_buffer_size'] = '2M'
