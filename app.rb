require "sinatra"
require "sinatra/reloader"
require "./lib/word_repeat"
also_reload"lib/**/*.rb"
require 'sinatra/twitter-bootstrap'

get('/') do

  erb(:index)

end

get('/results') do
  @user_string = params.fetch('user_string')
  @self = params.fetch('self')
  @times = @user_string.count(@self)

  erb(:results)

end
