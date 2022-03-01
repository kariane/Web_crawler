source "https://rubygems.org"

ruby "3.0.0"
gem "rails", "~> 7.0.2", ">= 7.0.2.2"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

# Application dependendancies
gem "nokogiri"
gem "open-uri"
gem "jwt"
gem "bcrypt"
gem "mongoid", platforms: %i[ mri mingw x64_mingw ]
gem "active_model_serializers"
gem "pry"
group :development, :test do

  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
end

group :development do

  gem "web-console"
  gem "listen"
  gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
