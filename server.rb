require 'sinatra'
require 'sinatra/reloader'

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]
compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
]

get '/' do
  @random_compliment = compliments.sample
  @random_color = colors.sample
  erb :compliment
end

get '/:name' do
  @name = params[:name]
  @random_compliment = compliments.sample + ","
  @random_color = colors.sample
  erb :compliment
end
