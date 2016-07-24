require 'sinatra'
require 'sinatra/reloader'

compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
];

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"];

get '/' do
  @compliments = compliments
  @colors = colors
  erb :layout
end

get '/:name' do
  "#{compliments.sample} #{params[:name]}"
  
end
