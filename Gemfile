source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier',     '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  gem "mocha",              "0.10.0"
  gem 'simplecov'
  gem "mynyml-redgreen",    "0.7.1"
  gem "minitest-reporters", "0.4.0", require: false
  gem "guard-minitest",     "0.4.0"
end

group :development, :test do
  gem 'pg'
  gem 'sqlite3'
  gem "guard-livereload", "0.3.0"
  gem "guard-coffeescript", "0.3.3"
end

group :production do
  gem 'pg'
end
