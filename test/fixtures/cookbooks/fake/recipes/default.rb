include_recipe 'oauth2_proxy'

oauth2_proxy_site 'default' do
  auth_provider 'google'
  client_id '123456.apps.googleusercontent.com'
  client_secret 'super_secret_secret'
  cookie_secret 'stroopwafel'
  upstreams [ 'http://localhost' ]
end
