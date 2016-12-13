require 'sinatra'
require 'sinatra/reloader'


compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get '/' do
  @compliment = compliments.sample
  @bg = colors.sample
  erb :index
end

get '/:name' do

  @compliment = "Hello #{params[:name]}  #{compliments.sample}"
  @bg = colors.sample
  erb :index
  form
end

get '/create' do
  erb :post
end
