source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.0.1"
gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "devise"
gem "devise-encryptable"
gem "carrierwave", "0.10.0"
gem "config", "1.2.1"
gem "bootstrap-sass", "3.2.0.0"
gem "kaminari"
gem "paperclip", "5.0.0.beta1"
gem "cancancan"
gem "font-awesome-rails"
gem "bootstrap-datepicker-rails"
gem "kaminari"
gem "bootstrap-kaminari-views"
gem "public_activity"
gem "breadcrumbs_on_rails"
gem "activerecord-import"
gem "closure_tree"
gem "ransack"
gem "i18n-js"
gem "activerecord-import"
gem "axlsx"
gem "remotipart", "~> 1.2"

group :development, :test do
  gem "byebug", platform: :mri
  gem "pry"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "faker"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "mysql2"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
