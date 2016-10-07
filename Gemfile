source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


# Gems related to Grape and Swagger
gem 'will_paginate'
gem 'grape'
gem 'doorkeeper'
# Basic requirements
gem 'haml' # All the view files are in haml
gem 'kaminari', github: 'amatsuda/kaminari', branch: '0-17-stable' #Version to support activeadmin on rails 5
# Grape extensions
gem 'wine_bouncer', github: 'antek-drzewiecki/wine_bouncer' # Authentication, adds swagger documentation
gem 'api-pagination' # API pagination. Relies on kaminari or will_paginate being present
gem 'grape-swagger', github: 'tim-vandecasteele/grape-swagger'
gem 'grape-swagger-entity'
gem 'grape-rabl'
gem 'active_model_serializers' #, github: 'rails/activemodel-serializers-xml' #Version to support activeadmin on rails 5
gem 'activemodel-serializers-xml', github: 'rails/activemodel-serializers-xml' # To fix a Draper deprecation error for Active Admin
gem 'grape-active_model_serializers'
gem 'kramdown'
gem 'rack-cors', :require => 'rack/cors' # Make Swagger spec CORS, required!
gem 'rack-p3p'
gem 'arel', '~> 7.1.0'