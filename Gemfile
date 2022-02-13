source 'https://rubygems.org'
git_source(:github) { "https://github.com/#{_1}.git" }
ruby '3.1.0'

gem 'amazing_print'
gem 'bootsnap', require: false
gem 'ffi-hunspell', '~> 0.6.1'
gem 'kredis', '~> 1.0', '>= 1.0.1'
gem 'pry-byebug'
gem 'pry-rails'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.2', '>= 7.0.2.2'
gem 'sentry-rails', '~> 4.3.0'
gem 'sentry-ruby', '~> 4.3.0'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'bundler-audit', '~> 0.8'
  gem 'reek', require: false
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
  gem 'spring'
end
