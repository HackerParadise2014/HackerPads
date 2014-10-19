source  'https://rubygems.org'
ruby    '2.1.3'

gem 'rails',        '4.1.6'
# Use SCSS for stylesheets
gem 'sass-rails',   '4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier',     '2.5.3'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# Use 'nodejs' for runtime support

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.1.2'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks',   '2.4.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder',     '2.2.2'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc',         '0.4.1',  group: :doc
# Active admin 
gem 'activeadmin',  github: 'activeadmin', ref: '05778f4'
# Devise - authentication gem
gem 'devise',       '3.4.0'
# GeoCoder gem for map url generation from DB fields
gem 'geocoder'

gem 'bootstrap-sass', '~> 3.2.0'

gem 'autoprefixer-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring',   '1.1.3'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3',  '1.3.9'
end

group :production do
  # Interface to PostgreSQL
  gem 'pg',             '0.17.1'
  # Heroku: serve static assets, log to stdout
  gem 'rails_12factor', '0.0.3'
end