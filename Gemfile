source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem "execjs"

# Removing this gem because it does not seem to be supported on Windows
# gem "therubyracer"

# Gem::Installer::ExtensionBuildError: ERROR: Failed to build gem native extension.
# when trying to install libv8.
# To resolve this I installed python, put the python folder into the path variable and ran gem install libv8 as an admin
# gem 'libv8', '3.3.10.4'

gem "rake", "0.8.7"
gem "mysql"
gem "aws-s3", :require => "aws/s3"
gem "aws-sdk"


group :production do
  gem "pg"
end

<<<<<<< HEAD
# Un comment this if this is the dev env
gem 'paperclip', '2.3.1.1'

=======
>>>>>>> feaca30043634081e1c9f9204c1c38f9478fe1d8
gem 'minitest'

gem 'authlogic'

# Comment this off it is the dev env
# gem 'paperclip'
 gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

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
