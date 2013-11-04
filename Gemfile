source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'mysql2' # 絵文字を使う場合はここでutf8mb4で記載する必要あり

gem 'haml-rails'
gem 'sass-rails',   '~> 3.2.3'
gem 'coffee-rails', '~> 3.2.1'
gem 'less-rails', '2.3.2'
gem 'less-rails-bootstrap', '2.3.2'
gem 'twitter-bootstrap-rails', '2.2.6'
gem 'font-awesome-rails'
gem 'devise', '3.1.1'

gem 'rails_config' #rails_configの設定、設定用ファイルの生成

gem 'binding_of_caller' # To inspect local variables when error occured

gem 'unicorn'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', '~> 0.10.2'
  gem 'libv8', '~> 3.3.10'

  gem 'jquery-rails'
  gem 'jquery-ui-rails'

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'erb2haml'
  gem 'html2haml' # To covert erb to haml
  gem 'simple_form'
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano_rsync_with_remote_cache'
  gem 'capistrano-unicorn', require: false
end

group :test, :development do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'rb-fsevent'
  gem 'spork'
#  gem 'better_errors', '~>0.3.2'
end

group :test do
  gem 'cucumber-rails', '1.4.0', require: false
end
