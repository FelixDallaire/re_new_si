source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.7', '>= 6.1.7.7'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0' 
# Use Puma as the app server
gem 'puma', '~> 3.12.4' 
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0', '>= 6.0.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0' 
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# gem rail admin
gem 'rails_admin', '~> 3.0', '>= 3.0.0'
gem 'twilio-ruby' , '>= 5.35.0'
gem 'pg' 

gem 'devise' , '>= 4.9.1'
gem 'devise_zxcvbn' 


gem "recaptcha", "5.5.0"
gem 'better_errors', '~> 2.10', '>= 2.10.0'

gem 'faker' 

gem 'blazer' , '>= 3.0.0'

gem 'sendgrid-ruby' 

gem "font-awesome-rails" 

gem 'geocoder' 

gem 'rails-html-sanitizer', '~> 1.6', '>= 1.6.0' # Audit suggest 1.0.3 but 1.3 is the most recent and patched version

gem 'ibm_watson' 

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0', '>= 5.0.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5' #M
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5' 
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false 

#Bootstrap
gem 'bootstrap', '~> 4.5.0'

#Jquery
gem 'jquery-rails' , '>= 4.6.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] 
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.0.0'
  gem 'listen', '>= 3.0.5', '< 3.2' 
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring' 
  gem 'spring-watcher-listen', '~> 2.0.0' 
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.37.0'
  gem 'selenium-webdriver' 
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper' 
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] 


gem 'capistrano', '~> 3.12', require: false 
gem 'rvm1-capistrano3', require: false 
gem 'capistrano-rails', '~> 1.4', require: false 
gem 'capistrano-bundler', '>= 1.1.0' 
gem 'capistrano3-puma', '>= 3.1.1' 


# gem 'capistrano',         require: false
# gem 'capistrano-rvm',     require: false
# gem 'capistrano-rails',   require: false
# gem 'capistrano-bundler', require: false
# gem 'capistrano3-puma',   require: false

# Dropbox
gem 'dropbox_api' 
#Slack integration gems
gem 'slack-ruby-client' 
gem 'http' 

#Environment variables for credential protection
  # The generator creates a config/application.yml file and modifies the .gitignore file to prevent the file from being checked into a git repository.
  # You can add environment variables as key/value pairs to config/application.yml:
  # GMAIL_USERNAME: Your_Username
  # The environment variables will be available anywhere in your application as ENV variables:
  # ENV["GMAIL_USERNAME"]
gem 'figaro' 
gem 'pry-byebug' 

gem 'zendesk_api', git: 'https://github.com/zendesk/zendesk_api_client_rb' 

# Google analytic
gem 'google-api-client', '~> 0.34'
# gem 'google-api-client', '~> 0.11', require: ‘google/apis/analyticsreporting_v4’
gem 'googleauth'
# New Relic
gem 'newrelic_rpm'
