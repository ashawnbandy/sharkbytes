source 'https://rubygems.org'

# Gems for ALL environments
gem 'rails', '3.2.2'
gem 'jquery-rails'
gem 'pg'
gem 'thin'
gem 'bcrypt-ruby', '3.0.1'
gem 'foreman'
gem 'devise', '>= 1.1.0'
gem 'bootstrap-sass'

group :production do

end

group :development, :test do
  gem 'rspec-rails', '2.10.0'
  gem 'guard-rspec', '0.5.5'
  gem 'guard-spork', '0.3.2'
  gem 'spork', '>= 0.9.0'
end

group :development do
  gem 'annotate', '~> 2.4.1.beta'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  # OS X stuff. (Not sure how this effects other OSes, please file a bug w/info)
  gem 'rb-fsevent', '0.4.3.1', :require => false
  gem 'growl', '1.0.3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end





