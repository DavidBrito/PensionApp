source 'https://rubygems.org'

# gems padrão do comando rails new

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# Gems adicionadas por necessidade do projeto

gem 'rails', '4.2.10'
gem 'ruby-oci8'
gem 'activerecord-oracle_enhanced-adapter', '~> 1.6.0'
gem 'devise'
gem 'rails-i18n', '~> 4.0'
gem 'rails-assets-bootstrap', source: 'https://rails-assets.org'
gem 'administrate'


group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'rb-readline' 
end

group :test do
  gem 'shoulda-matchers'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
end

ruby "2.4.4"
