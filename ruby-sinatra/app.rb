require 'rake'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require 'mysql2'
require 'json'

require './routes'

class App < Sinatra::Application
end

require_relative 'helpers/init'

# Require models
current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

