# # # # #
# mysql #
# # # # #
node.set['percona']['server']['debian_username'] = "spud"

node.default["percona"]["server"]["max_connections"] = 4096
node.default["percona"]["server"]["key_buffer_size"] = "256M"
node.default["percona"]["server"]["join_buffer_size"] = "4M"
node.default["percona"]["server"]["read_buffer_size"] = "4M"
node.default["percona"]["server"]["read_rnd_buffer_size"] = "4M"
node.default["percona"]["server"]["table_open_cache"] = 8192
node.default["percona"]["server"]["thread_cache_size"] = 512
node.default["percona"]["server"]["wait_timeout"] = 150
node.default["percona"]["server"]["interactive_timeout"] = 150
node.default["percona"]["server"]["connect_timeout"] = 60
node.default["percona"]["server"]["tmp_table_size"] = "384M"
node.default["percona"]["server"]["max_heap_table_size"] = "384M"
node.default["percona"]["server"]["max_allowed_packet"] = "1024M"
node.default["percona"]["server"]["query_cache_limit"] = "4M"
node.default["percona"]["server"]["query_cache_size"] = "128M"
node.default["percona"]["server"]["query_cache_type"] = 1
node.default["percona"]["server"]["query_prealloc_size"] = 16384
node.default["percona"]["server"]["query_alloc_block_size"] = 16384
node.default["percona"]["server"]["innodb_thread_concurrency"] = 24
node.default["percona"]["server"]["innodb_buffer_pool_size"] = "256M"
node.default["percona"]["server"]["innodb_log_file_size"] = "384M"
node.default["percona"]["server"]["innodb_log_buffer_size"] = "24M"
node.default["percona"]["server"]["innodb_additional_mem_pool_size"] = "16M"
node.default["percona"]["server"]["innodb_io_capacity"] = 800
node.default["percona"]["server"]["innodb_concurrency_tickets"] = 900
node.default["percona"]["server"]["innodb_flush_neighbor_pages"] = "cont"
node.default["percona"]["server"]["innodb_lock_wait_timeout"] = 75
node.default["percona"]["server"]["innodb_flush_method"] = "O_DIRECT"
node.default["percona"]["server"]["innodb_flush_log_at_trx_commit"] = 1
node.default["percona"]["server"]["key_buffer_size"] = "128M"
node.default["percona"]["server"]["sort_buffer_size"] = "128M"
node.default["percona"]["server"]["read_buffer_size"] = "2M"
node.default["percona"]["server"]["write_buffer_size"] = "2M"