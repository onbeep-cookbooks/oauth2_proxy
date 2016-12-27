# oauth2_proxy

![image](https://circleci.com/gh/orion-cookbooks/oauth2_proxy/tree/master.svg?style=shield&circle-token=89bd4ccd24e3a88c0149ac1f3f8f82b936fe5017)

Cookbook to install and configure [oauth2_proxy](https://github.com/bitly/oauth2_proxy) with LWRP

## Requirements

* ark
* pleaserun

## Platform Tested

* Ubuntu 14.04 LTS
* CentOS 7.2

## Usage

oauth2_proxy Cookbook utilizes a lightweight resource provider (LWRP) to handle installing [oauth2_proxy](https://github.com/bitly/oauth2_proxy), generate an oauth2_proxy config, and install a service for oauth2_proxy.

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

## Copyright

Copyright 2015 Orion Labs, Inc.

## License

* The oauth2_proxy Cookbook is covered under the Apache License, Version 2.0
* The oauth2_proxy program is covered under the MIT license.

See LICENSE for the Apache License, Version 2.0
