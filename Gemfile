source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 8.0.2'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails', '~> 3.5.2'

# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.5.6'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 6.6.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails', '~> 2.1.0'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails', '~> 2.0.13'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails', '~> 1.3.4'

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem 'tailwindcss-rails', '~> 4.2.3'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder', '~> 2.13.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem 'kredis'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.18.4', require: false

# Use Sass to process CSS
# gem 'sassc-rails'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem 'image_processing', '~> 1.2'

gem 'redis', '~> 5.4.0'

# This is for the free version of Sidekiq.
gem 'sidekiq', '~> 8.0.3'

# Use this for SideKiq Pro if you have our production keys
# source 'https://gems.contribsys.com/' do
#   gem 'sidekiq-pro'
# end

gem 'devise', '~> 4.9.4'
gem 'devise-i18n', '~> 1.12.1'

gem 'kaminari', '~> 1.2.2'

gem 'wkhtmltopdf-binary', '~> 0.12.6.8'
gem 'wicked_pdf', '~> 2.8.2'

gem 'attr_encrypted', '~> 4.2.0'

# User browser detection
gem 'browser', '~> 6.2.0'

gem 'mutex_m', '~> 0.3.0'

gem 'nkf', '~> 0.2.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.4.4'
  gem 'pry', '~> 0.15.2'
  gem 'rubocop', '~> 1.75.5'
  gem 'faker', '~> 3.5.1'
end

group :development do
  gem 'listen', '~> 3.9.0'
  # Access an interactive console on exception pages or by calling 'console'
  # anywhere in the code.
  gem 'web-console', '~> 4.2.1'
  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 4.3.0'
  gem 'spring-watcher-listen', '~> 2.1.0'
  gem 'letter_opener_web', '~> 3.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.40.0'
  gem 'selenium-webdriver', '~> 4.10.0'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers', '~> 5.3.1'
  gem 'minitest-spec-rails', '~> 7.4.1'
end
