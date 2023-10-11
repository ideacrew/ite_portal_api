# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0', '>= 7.0.3'

# Use postgresql as the database for Active Record
gem 'activerecord-sqlserver-adapter'

# tiny tds
gem 'tiny_tds'

# gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
# gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
# gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'puma', '~> 5.0'

# authentication
gem 'jwt'
gem 'pundit', '~> 2.2'

# xml parsing
gem 'nokogiri', '~> 1.13', '>= 1.13.6'

# dry gems
gem 'dry-monads', '~> 1.4'
gem 'dry-struct', '~> 1.4'
gem 'dry-transformer', '~> 0.1.1'
gem 'dry-types', '~> 1.5', '>= 1.5.1'
gem 'dry-validation', '~> 1.8'

# for speeding up json rendering and parsing
gem 'oj', '~> 3.13', '>= 3.13.15'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.20'
  gem 'pry-byebug', '~> 3.9'
  gem 'rspec-rails', '~> 5.1', '>= 5.1.2'
  # awesome print to make the payloads easier to visually parse
  gem 'awesome_print', '~> 1.9', '>= 1.9.2'
  gem 'dotenv-rails'
  gem 'pry-rails', '~> 0.3.4'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rubocop', '~> 1.31', '>= 1.31.1'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
