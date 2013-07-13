source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'devise'
gem 'bootstrap-sass', '~> 2.3.2.0'
gem 'will_paginate', '~> 3.0'

group :development, :test do
	gem 'rspec-rails'
  gem 'faker'
end

group :test do
	gem 'database_cleaner'
	gem 'factory_girl_rails'
  gem 'nyan-cat-formatter' #rspec --format NyanCatFormatter or NyanCatMusicFormatter
  gem 'capybara'
end

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production do
  gem 'passenger'
  gem 'mysql2'
end

gem 'sqlite3'
gem 'haml'

gem 'fog', '~> 1.3.1'
gem 'carrierwave'
gem 'video-js-rails'
gem 'carrierwave_direct'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
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
