require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "hello"
end

get '/secret' do
  "Zimbabwe"
end

get '/bye' do
  "buhbye"
end

get '/random_cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat'  do
  p @name = params[:name]
  p @color = params[:color]
  erb(:index)
end