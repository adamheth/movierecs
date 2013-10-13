source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'pg'
gem 'json'
gem 'nokogiri', '~> 1.6.0'
gem 'fandango'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'
end

group :development, :test do
  gem 'pg'
  gem 'newrelic_rpm'
  gem 'awesome_print'

  # rspec
  gem 'rspec-rails'
  gem 'guard-rspec'

  # Hirb.enable
  gem 'hirb', :git => "git://github.com/cldwalker/hirb.git"

  # Live Reload
  gem 'rb-fsevent'
  gem 'guard-livereload'
end

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'factory_girl_rails'
  gem 'guard-spork', '0.3.2'  
  gem 'spork', '0.9.0'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
