require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :compliment
end
