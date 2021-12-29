ruby '2.6.3'
source "https://rubygems.org"

gem 'rubocop'
gem 'ruby-debug-ide'
gem 'debase'
gem 'rcodetools'
gem 'fastri'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-activerecord'
gem 'activerecord', '5.2.3'

group :development, :test do
  gem 'sqlite3', '1.3.13'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :production do
  gem 'pg', '0.20.0'
end

gem 'rake'
gem 'bcrypt'