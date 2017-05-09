require 'bundler/setup'
require 'rake/testtask'
load 'tasks/otr-activerecord.rake'

OTR::ActiveRecord.db_dir = 'database'
OTR::ActiveRecord.migrations_paths = ['db/migrations']
OTR::ActiveRecord.fixtures_path = 'test/fixtures'
OTR::ActiveRecord.seed_file = 'seeds.rb'

namespace :db do
  task :environment do
    require_relative 'config/environment'
  end
end
