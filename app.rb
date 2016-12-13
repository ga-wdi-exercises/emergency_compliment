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

get '/personal/:name' do
  @compliment = "Hello #{params[:name]}  #{compliments.sample}"
  @bg = colors.sample
  erb :index
end

get '/post' do
  @bg = colors.sample
  erb :post
end

post '/postc' do
  compliments.push(params[:comp])
  redirect '/'
end
