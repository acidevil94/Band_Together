source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'

#.roberto per autenticazione
gem 'devise', '~> 4.2'


#andrea. usata per la messaggistica
gem 'mailboxer'

gem 'chosen-rails'

gem 'bootstrap-select-rails'

gem 'fullcalendar-rails'
gem 'momentjs-rails'

=begin

CanCanCan is an authorization library which restricts what resources a given user is allowed to access.

All permissions are defined in a single location (the Ability class) and not duplicated across controllers, views, and database queries.

=end

gem 'cancancan', '~> 1.10'

#Richiesta per far funzionare le autenticazioni specifiche dei vari provider. RezeR
gem 'omniauth', '~> 1.3', '>= 1.3.2'

#Richiesta da omniauth-google-oauth2, altrimenti non funziona niente. RezeR
gem 'omniauth-oauth2', '~> 1.3.1'

gem 'omniauth-facebook'

#Gemme per l'autenticazione specifiche per ogni provider.

  #.roberto autenticazione google
gem 'omniauth-google-oauth2', '~> 0.4.1'

gem 'bootstrap-sass', '~> 3.3.6'

#andrea It automatically adds the proper vendor prefixes to your CSS code when it is compiled.
gem 'autoprefixer-rails'

gem 'sprockets-rails', :require => 'sprockets/railtie'

gem "font-awesome-rails"

gem 'frontend-generators'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

#gem per assert_template deprecated
gem 'rails-controller-testing'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# jquery library for animation
gem 'jquery-easing-rails'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#RailsAdmin is a Rails engine that provides an easy-to-use interface for managing your data
gem 'rails_admin', '~> 1.1.1'

# GEMS AGGIUNTE PER LA VALIDAZIONE
#ValidatesTimeliness provides complete validation of dates, times and datetimes
gem 'validates_timeliness', '~> 4.0'

#immagine utente
gem 'gravatar-ultimate'

gem 'gravtastic'

#city-state is a very simple ruby gem to get a list of states in a country. Also, you can get a list of cities in a state, and a list of all countries of the world.
gem 'city-state'

gem 'countries', :require => 'countries/global'

gem "fakeweb", "~> 1.3"

#ActiveHash is a simple base class that allows you to use a ruby hash as a readonly datasource for an ActiveRecord-like model
gem 'active_hash'

#Application Search Engine
gem 'searchkick'

#SmartListing helps creating AJAX-enabled lists of ActiveRecord collections or arrays with pagination, filtering, sorting and in-place editing.
gem 'smart_listing'

#Fornisce la stilizzazione bootstrap degli input slider
gem 'bootstrap-slider-rails'

group :test do

  #.roberto
  #run cucumber with: [bundle exec] cucumber
  gem 'cucumber-rails', :require => false

#andrea. su ubuntu far girare il seguente comando prima di eseguire bundle install
#'sudo apt-get install qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x'
  gem "capybara-webkit"


  #andrea. usato per debug in cucumber.
  gem 'pry-rails'
  gem 'pry-byebug'


  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'

  #Shoulda-Matchers provides one-line matchers to RSpec used in testing Rails functionality
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.1'

  #Faker is used to easily generate fake data: names, addresses, phone numbers, etc.
  gem 'faker', '~> 1.7', '>= 1.7.3'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  #Rspec-rails è un testing framework
  #usato per attuare il TDD
  #rspec command to run your specs: bundle exec rspec
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'

  #factory_girl is a fixtures replacement
  gem 'factory_girl_rails', '~> 4.7', :require => false

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
