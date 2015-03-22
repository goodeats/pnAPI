source 'https://rubygems.org'
ruby '2.2.0'
gem 'rails', '4.2.0'
gem 'rails-api'
gem 'spring', :group => :development
gem 'pg'
gem 'sqlite3'
gem 'newrelic_rpm'
gem 'rack-cors'
gem "paperclip", "~> 4.2"
gem 'active_model_serializers'
gem 'nokogiri'
gem 'bcrypt', '~> 3.1.7'
gem 'aws-sdk'
group :development, :test do
  gem 'capybara'
  gem 'rubocop'
  gem 'bullet'
  gem 'lol_dba'
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 3.1.0'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'factory_girl_rails', '~> 4.0'
end
group :development do
  gem 'guard'
  gem 'guard-rails'
end
group :production do
  gem 'unicorn'
  gem 'rails_12factor'
  gem 'rails_stdout_logging'
  gem 'rails_serve_static_assets'
end
