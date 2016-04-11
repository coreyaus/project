source 'https://rubygems.org'
ruby '2.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Bootstrap baby!
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'bootstrap-generators', '~> 3.3.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# gem 'haml', '~> 4.0', '>= 4.0.7'
gem 'haml'
gem 'haml-rails', '~> 0.9.0'

gem 'angularjs-rails'

#Add authorisation
gem 'cancancan'

#Stripe to handle payments
gem 'stripe'

#Handle pagination
gem 'will_paginate', '~> 3.0.6'

# a tool to add "active" class to links if user is already on that page
# gem 'nav_lynx', '~> 1.1', '>= 1.1.1'

gem 'font-awesome-sass'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-easing-rails', '~> 0.0.2'
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Make turbolinks play nice with jQuery - run my sitewide JS on every page change
gem 'jquery-turbolinks'

gem 'devise'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
	# Use sqlite3 as the database for Active Record
	gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem "erb2haml"
  gem "factory_girl_rails", "~> 4.0"
  gem 'rspec-rails', '~> 3.0'
  # Brakeman detects security vulnerabilities in Ruby on Rails applications via static analysis.
  gem 'brakeman', '~> 3.2', '>= 3.2.1'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'spork-rails'
  gem 'guard-spork'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
	gem 'rails_12factor'
  gem 'pg'
end
