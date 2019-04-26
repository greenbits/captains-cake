require 'rake'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'

require './routes'

# Require models
current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }
