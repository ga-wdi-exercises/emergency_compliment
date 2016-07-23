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
  return "#{compliments.sample}"
end

get '/:name' do
  return "Hi there, #{params[:name]}. #{compliments.sample}"
end
