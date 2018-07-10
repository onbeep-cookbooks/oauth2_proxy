# Configures an oauth2_proxy site
#
# Provider:: site
# Cookbook: oauth2_proxy
# Author:: Mike Juarez <mike@orionlabs.co>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/orion-cookbooks/oauth2_proxy
#

# Derived from:
#   https://github.com/bitly/oauth2_proxy/blob/master/contrib/oauth2_proxy.cfg.example

actions :create, :delete
default_action :create

attribute :name, name_attribute: true, kind_of: String, required: true

attribute :auth_provider, kind_of: String, required: true

attribute :http_address, kind_of: String
attribute :https_address, kind_of: String

attribute :tls_cert_file, kind_of: String
attribute :tls_key_file, kind_of: String

attribute :redirect_url, kind_of: String

attribute :upstreams, kind_of: [Array, Hash]

attribute :request_logging, kind_of: [TrueClass, FalseClass]

attribute :pass_host_header, kind_of: [TrueClass, FalseClass]

attribute :email_domains, kind_of: [Array, Hash]

attribute :client_id, kind_of: String
attribute :client_secret, kind_of: String

attribute :pass_access_token, kind_of: [TrueClass, FalseClass]
attribute :pass_basic_auth, kind_of: [TrueClass, FalseClass]

attribute :authenticated_emails_file, kind_of: String

attribute :htpasswd_file, kind_of: String

attribute :custom_templates_dir, kind_of: String

attribute :cookie_name, kind_of: String
attribute :cookie_secret, kind_of: String
attribute :cookie_domain, kind_of: String
attribute :cookie_expire, kind_of: String
attribute :cookie_refresh, kind_of: String
attribute :cookie_secure, kind_of: [TrueClass, FalseClass]
attribute :cookie_httponly, kind_of: [TrueClass, FalseClass]

attribute :github_org, kind_of: String
attribute :github_team, kind_of: String

attribute :google_group, kind_of: String
attribute :google_admin_email, kind_of: String
attribute :google_service_account_json, kind_of: String


def initialize(*args)
  super
  @action = :create
end
