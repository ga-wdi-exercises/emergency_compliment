require 'sinatra'
require 'sinatra/reloader'

compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you",
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get '/' do
  @compliment = compliments.sample
  @color = colors.sample
  @greeting = "HEY THERE HANDSOME"
  erb :compliment
end

get '/:name' do
  @compliment = compliments.sample
  @color = colors.sample
  @greeting = "HEY THERE #{params[:name]}"
  erb :compliment
end

post '/' do
  compliments.push(params[:new_compliment])
  redirect "/"
end
