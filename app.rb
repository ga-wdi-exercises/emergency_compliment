require 'sinatra'
require 'sinatra/reloader'

compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you",
  "You're the world's #0 programmer"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get '/' do
  @greeting_name = "Hey There!"
  @greeting_msg = "Here's a little something to cheer you up:"
  @compliment = compliments.sample
  @color = colors.sample
  erb :index
end

get '/:name' do
  @name = params[:name].capitalize
  @greeting_name = "Hey #{@name}!"
  @greeting_msg = "Here's a little something to cheer you up:"
  @compliment = compliments.sample
  @color = colors.sample
  erb :index
end

post '/add' do
  compliments << params[:compliment]
  redirect '/'
end
