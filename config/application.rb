$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'boot'

Bundler.require :default, ENV['RACK_ENV']

# Connect to database
OTR::ActiveRecord.configure_from_file! "config/database.yml"

Dir[File.expand_path('../../app/*.rb', __FILE__)].each { |f| require f }
Dir[File.expand_path('../../app/model/*.rb', __FILE__)].each { |f| require f }

require 'api'
