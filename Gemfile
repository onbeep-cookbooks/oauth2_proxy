source 'https://rubygems.org'


gem 'rake'

group :lint do
  gem 'foodcritic', '~> 3.0'
  gem 'rubocop', '~> 0.18'
  gem 'rainbow', '< 2.0'
end

group :unit do
  gem 'rspec', '2.14'  # https://gist.github.com/jcarapet/9531009#comment-1249838
  gem 'berkshelf',  '~> 3.1'
  gem 'chefspec',   '~> 3.4'
end

group :kitchen_common do
  gem 'test-kitchen', '~> 1.2'
end

group :kitchen_vagrant do
  gem 'kitchen-vagrant', '~> 0.14'
end

group :kitchen_cloud do
  gem 'kitchen-digitalocean'
  gem 'kitchen-ec2'
  gem 'spothop'
end

group :integration do
  gem 'serverspec', '~> 0.15'
  gem 'thor-scmversion', '~> 1.4'
end
