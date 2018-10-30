# Includes oauth2_proxy
#
# Recipe:: install
# Cookbook:: oauth2_proxy
# Author:: Mike Juarez <mike@orionlabs.co>
# License:: Apache License, Version 2.0
# Source:: https://github.com/orion-cookbooks/oauth2_proxy
#

include_recipe 'ark'

ark 'oauth2_proxy' do
  url node['oauth2_proxy']['install_url']
  checksum node['oauth2_proxy']['checksum']
  path node['oauth2_proxy']['install_path']
  action :install
end

directory node['oauth2_proxy']['config_files'] do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
