source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.4.4"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.0"

# Use pg as the database for Active Record
gem "pg", "~> 1.1"
# gem "sqlite3", "~> 1.4", groups: [:development, :test]

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 6.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails", ">= 0.3.4"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", ">= 0.7.11"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails", ">= 0.4.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", "~> 2.7"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 5.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Use Sass to process CSS
gem "sassc-rails", "~> 2.1"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

# Authentication and authorization
gem "devise", "~> 4.9"
gem "pundit", "~> 2.3"

# Social features
gem "acts_as_follower", "~> 0.2.1"
gem "acts_as_votable", "~> 0.12.1"

# API and JSON handling
gem "jsonapi-serializer", "~> 2.2"

# Background jobs
gem "sidekiq", "~> 7.0"

# Search functionality
gem "searchkick", "~> 5.0"

# File uploads
gem "aws-sdk-s3", "~> 1.0", require: false

# Plant identification API (placeholder for future integration)
# gem "plant_id", "~> 1.0"

# Geocoding for plant locations
gem "geocoder", "~> 1.8"

# Pagination
gem "kaminari", "~> 1.2"

# Error tracking
gem "sentry-ruby", "~> 5.0"
gem "sentry-rails", "~> 5.0"

group :development, :test do
  gem "rspec-rails", "~> 6.0"
  gem "factory_bot_rails", "~> 6.4"
  gem "faker", "~> 3.2"
  # Start debugger with binding.b [https://github.com/ruby/debug]
  gem "debug", ">= 1.0.0", platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", ">= 4.1.0"
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler", ">= 2.3.3"
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  
  # Better error pages
  gem "better_errors", "~> 2.10"
  gem "binding_of_caller", "~> 1.0"
  
  # Database management
  # gem "annotate", "~> 3.2"
  # gem "bullet", "~> 7.0"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "shoulda-matchers", "~> 5.0"
  gem "vcr", "~> 6.0"
  gem "webmock", "~> 3.18"
end

group :rubocop do
  gem "rubocop", ">= 1.50", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-packaging", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end
