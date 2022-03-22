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

get '/cat' do
  erb(:index)
end