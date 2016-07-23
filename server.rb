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

get '/compliment' do
  return "<body style='background-color:#{colors.sample}'><h1>#{compliments.sample}</h1></body>"
end

get '/:name' do
  return "<body style='background-color:#{colors.sample}'><h1>Hi there, #{params[:name]}. #{compliments.sample}</h1></body>"
end

post '/' do
  compliments.push(params[:compliment])
end
