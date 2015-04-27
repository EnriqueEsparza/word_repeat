require "sinatra"
require "sinatra/reloader"
require "./lib/word_repeat"
also_reload"lib/**/*.rb"


get('/') do

  erb(:index)

end

get('/results') do
  @user_string = params.fetch('user_string')
  @self = params.fetch('self')
  @times = @user_string.split(/ /).count(@self)


  erb(:results)

end
