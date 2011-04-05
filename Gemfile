
source :rubygems

gem 'rails', '3.0.5'

# gem 'mysql'
gem 'pg'

gem 'cancan'
gem 'compass'
gem 'devise', :git => 'git://github.com/plataformatec/devise.git'
gem 'haml-rails'
gem 'html5-boilerplate'
gem 'idkfa'
gem "oa-oauth", :require => "omniauth/oauth"
gem 'pusher'
gem 'rack-ssl', :require => 'rack/ssl'

gem 'awesome_print'
gem 'looksee'
gem 'wirble'

group :development do
  gem 'hpricot'
  gem 'ruby_parser'

  # for typical deployment
  # gem 'capistrano'

  # for heroku deployment
  gem 'heroku', '>= 1.19.1', :require => false
  gem 'heroku_san'
  gem 'git'
  gem 'taps'
end

group :test do
  gem 'capybara'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'spork'
end

group :test, :development do
  gem 'factory_girl_generator'
  gem 'rspec-rails'
  gem 'ruby-debug19'
end
