source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'haml'
gem 'mysql2'
gem 'devise'
gem 'trails'
gem 'pg'
gem 'rake'

# Asset template engines
group :assets do

	gem 'sass-rails', "~> 3.1.0.rc"
	gem 'compass', git: 'https://github.com/chriseppstein/compass.git', branch: 'rails31'
	gem 'coffee-script'
	gem 'uglifier'

end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :production do
	gem 'therubyracer-heroku'
end