# oauth2_proxy attributes
#
# Attributes:: foo
# Cookbook:: oauth2_proxy
# Author:: Mike Juarez <mike@orionlabs.co>
# License:: # Copyright (c) 2015 Orion Labs, Inc., All Rights Reserved.
# Source:: https://github.com/onbeep-cookbooks/oauth2_proxy
#

default['oauth2_proxy']['install_url'] = 'https://github.com/bitly/oauth2_proxy/releases/download/v2.0.1/oauth2_proxy-2.0.1.linux-amd64.go1.4.2.tar.gz'
default['oauth2_proxy']['checksum'] = 'c6d8f6d74e1958ce1688f3cf7d60648b9d0d6d4344d74c740c515a00b4e023ad'
default['oauth2_proxy']['install_path'] = '/usr/local/oauth2_proxy'

default['oauth2_proxy']['config_files'] = '/etc/oauth2_proxy/'
