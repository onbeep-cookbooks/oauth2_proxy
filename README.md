# oauth2_proxy

Cookbook to install and configure oauth2_proxy with LWRP

## Requirements

* ark
* pleaserun

## Platform Tested

## Usage

oauth2_proxy utilizes a lightweight resource provider (LWRP) to handle installing oauth2_proxy, generate an oauth2_proxy config, and install a service for oauth2_proxy.

```
oauth2_proxy_site 'default' do
  auth_provider 'google'
  client_id 'foo'
  client_secret 'biscuit'
  cookie_secret 'stroopwafel'
  upstreams [ 'braindump.sql' ]
end
```

## Attributes

| Attribute | Description |
| --------- |-------------|
| `default['oauth2_proxy']['install_url']` | URL of release to download and install |
| `default['oauth2_proxy']['checksum']` | Checksum of release |
| `default['oauth2_proxy']['install_path']` | Path of where to install binaries |
| `default['oauth2_proxy']['config_files']` | Location to store config_files |


## Recipes

### oauth2_proxy::install

Only installs oauth2_proxy with no configuration.

### oauth2_proxy::default

No-op.

## Author and Contributors

* Author:: Mike Juarez <mike@orionlabs.co>
