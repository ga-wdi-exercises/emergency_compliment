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
  @hello = "hello!"
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end

get '/name' do
  @hello = "Hey #{params[:name]}"
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end

post '/' do
  compliments.push(params[:compliment])
  redirect '/'
end
