ENV["RACK_ENV"] ||= "development"

require "bundler/setup"

Bundler.require(:default, ENV["RACK_ENV"])

require_all "app/models"
ActiveRecord::Base.logger = Logger.new(STDOUT)
