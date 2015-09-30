source 'https://rubygems.org'

#ruby '2.2.1'

gem 'rails', '4.2.4'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'

gem 'turbolinks'

gem 'devise'
gem 'pundit', :git => 'https://github.com/geekninja/pundit.git', :branch => 'master'
gem 'simple_form'
gem 'haml-rails'
gem 'carrierwave', github: 'carrierwaveuploader/carrierwave'


gem 'friendly_id'
gem 'validates_cpf_cnpj'
gem 'validates_timeliness'
gem 'email_validator'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'site',       path: 'engines/site'
gem 'admin',      path: 'engines/admin'
gem 'customer',   path: 'engines/customer'
