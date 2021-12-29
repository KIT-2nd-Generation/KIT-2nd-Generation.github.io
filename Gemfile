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

# gemのバージョンは適宜変えてください

# 開発・テスト環境ではSQLite3を使う
group :development, :test do
  gem 'sqlite3'
end

# 本番環境ではPostgresqlを使う
group :production do
  gem 'pg', '0.20.0'
end

gem 'rake'
gem 'bcrypt'