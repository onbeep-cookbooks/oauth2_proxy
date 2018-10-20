source 'https://rubygems.org'

gem 'rake'

group :lint do
  gem 'foodcritic'
  gem 'rubocop'
  gem 'rainbow'
end

group :unit do
  gem 'rspec'
  gem 'berkshelf'
  gem 'chefspec'
  gem 'faraday_middleware'
  gem 'pleaserun'
end

group :kitchen_common do
  gem 'test-kitchen'
end

group :kitchen_vagrant do
  gem 'kitchen-vagrant'
end

group :kitchen_cloud do
  gem 'kitchen-digitalocean'
  gem 'kitchen-ec2'
  gem 'spothop'
end

group :integration do
  gem 'serverspec'
  gem 'thor-scmversion'
end
