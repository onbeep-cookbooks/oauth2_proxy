# oauth2_proxy

![image](https://circleci.com/gh/onbeep-cookbooks/oauth2_proxy/tree/master.svg?style=shield&circle-token=89bd4ccd24e3a88c0149ac1f3f8f82b936fe5017)

Cookbook to install and configure oauth2_proxy with LWRP

## Requirements

* ark
* pleaserun

## Platform Tested

* Ubuntu 14.04 LTS

## Usage

oauth2_proxy utilizes a lightweight resource provider (LWRP) to handle installing oauth2_proxy, generate an oauth2_proxy config, and install a service for oauth2_proxy.

```
oauth2_proxy_site 'default' do
  auth_provider 'google'
  client_id 'foo'
  client_secret 'biscuit'
  cookie_secret 'stroopwafel'
  upstreams [ 'http://localhost' ]
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