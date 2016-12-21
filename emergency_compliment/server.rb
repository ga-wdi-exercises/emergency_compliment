require "sinatra"
require "sinatra/reloader"

compliments = [
  "Our cohort is the best!",
  "You so smart",
  "Yay diagnostic",
  "Let's get things crackin",
  "You are the wind beneath my wings"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get ("/")  do
  @greeting = "Howdy!"
  @compliment = compliments
  @color = colors
  erb :compliment
end

get ("/:name") do
  @greeting = "What's up #{params[:name].capitalize}!"
  @compliment = compliments
  @color = colors
  erb :compliment
end

post ("/") do
  compliments.push(params[:compliment])
end
