current_dir = File.dirname(__FILE__)

log_level                :info
log_location             STDOUT
node_name                ENV['chef_node_name']
client_key               ENV['chef_client_key']

chef_server_url          ENV['chef_server_url']
cache_type               'BasicFile'
