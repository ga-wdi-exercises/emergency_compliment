require 'sinatra'
require 'sinatra/reloader'
require 'erb'

compliments = [
    "Your instructors love you",
    "High five = ^5",
    "Is it Ruby Tuesday yet?",
    "It's almost beer o'clock",
    "The Force is strong with you"
]
colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]



get '/' do

  @greeting = "Don't let this go to your head!"
  @compliment = compliments.sample

  erb :compliment
end

get '/:name' do
  @greeting = "#{params[:name].capitalize}, don't let this go to your head!"
  @compliment = compliments.sample

  erb :compliment
end

get '/88' do
  return_string = "<a href='/#{params[:num_bottles].to_i - 1}' >#{params[:num_bottles]} bottles of beer on the wall</a>"
  return return_string
end