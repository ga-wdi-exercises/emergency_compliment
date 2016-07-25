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

get '/compliment/:name?' do
  @greeting = params[:name] ? "Hey, #{params[:name]}" : "Hey you."
  @compliment = compliments.sample
  @background_colors = colors.sample
  erb :compliment
end

#not sure if this is what we needed to do?
post '/' do
  compliments.push(params[:compliment])
end
