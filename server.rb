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
  @comp = compliments.sample
  @color = colors.sample
  @name = ''
  erb :layout
end

get '/:name' do
  @comp = compliments.sample
  @color = colors.sample
  @name = params[:name] + ' '
  erb :layout
end
