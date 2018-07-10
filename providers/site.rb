# Configures an oauth2_proxy site
#
# Provider:: site
# Cookbook: oauth2_proxy
# Author:: Mike Juarez <mike@orionlabs.co>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/orion-cookbooks/oauth2_proxy
#

def whyrun_supported?
  true
end

def generate_cfg_hash
  cfg_hash = {
    :provider => new_resource.auth_provider,
    :http_address => new_resource.http_address,
    :https_address => new_resource.https_address,
    :tls_cert_file => new_resource.tls_cert_file,
    :tls_key_file => new_resource.tls_key_file,
    :redirect_url => new_resource.redirect_url,
    :upstreams => new_resource.upstreams,
    :request_logging => new_resource.request_logging,
    :pass_host_header => new_resource.pass_host_header,
    :email_domains => new_resource.email_domains,
    :client_id => new_resource.client_id,
    :client_secret => new_resource.client_secret,
    :pass_access_token => new_resource.pass_access_token,
    :pass_basic_auth => new_resource.pass_basic_auth,
    :authenticated_emails_file => new_resource.authenticated_emails_file,
    :htpasswd_file => new_resource.htpasswd_file,
    :custom_templates_dir => new_resource.custom_templates_dir,
    :cookie_name => new_resource.cookie_name,
    :cookie_secret => new_resource.cookie_secret,
    :cookie_domain => new_resource.cookie_domain,
    :cookie_expire => new_resource.cookie_expire,
    :cookie_refresh => new_resource.cookie_refresh,
    :cookie_secure => new_resource.cookie_secure,
    :cookie_httponly => new_resource.cookie_httponly,
    :github_org => new_resource.github_org,
    :github_team => new_resource.github_team,
    :google_group => new_resource.google_group,
    :google_admin_email => new_resource.google_admin_email,
    :google_service_account_json => new_resource.google_service_account_json
  }
end

action :create do
  require 'toml'

  include_recipe 'oauth2_proxy::install'

  oauth2_proxy_cfg_path = ::File.join(node['oauth2_proxy']['config_files'],"#{new_resource.name}.cfg")

  cfg_hash = generate_cfg_hash

  cfg = TOML::Generator.new(cfg_hash).body

  file oauth2_proxy_cfg_path do
    content cfg
    notifies :restart, "service[oauth2_proxy-#{new_resource.name}]"
  end

  pleaserun "oauth2_proxy-#{new_resource.name}" do
    name "oauth2_proxy-#{new_resource.name}"
    program ::File.join(node['oauth2_proxy']['install_path'],'oauth2_proxy')
    args [ "-config=#{oauth2_proxy_cfg_path}" ]
    description "oauth2_proxy for #{new_resource.name}"
    action :create
  end

  service "oauth2_proxy-#{new_resource.name}" do
    supports :status => true, :restart => true, :reload => true
    action [:start, :enable]
  end
end

action :delete do
  oauth2_proxy_cfg_path = File.join(node['oauth2_proxy']['config_files'],"#{new_resource.name}.cfg")

  file oauth2_proxy_cfg_path do
    action :delete
  end

  pleaserun "oauth2_proxy-#{new_resource.name}" do
    name "oauth2_proxy-#{new_resource.name}"
    action :delete
  end

  service "oauth2_proxy-#{new_resource.name}" do
    action [:stop, :disable]
  end
end

def load_current_resource
  chef_gem 'toml' do
    action :nothing
  end.run_action(:install)

  @current_resource = Chef::Resource::Oauth2ProxySite.new(@new_resource.name)
end
