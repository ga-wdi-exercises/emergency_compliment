require "sinatra"
require "sinatra/reloader"


compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
]

get '/' do
  @compliment = compliments.sample
  erb :compliment
end

get '/:name' do
  @name = params[:name].to_s
  @compliment = compliments.sample
  erb :compliment
end
