require 'sinatra'
require 'sinatra/reloader'


  compliments = [
    "Smile, your website is beautiful!",
    "You've got friends!",
    "Here's a hug! xoxo",
    "At least your hair looks good",
    "<3"
  ]

  colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get ("/") do
@compliment = compliments.sample
@colors = colors.sample
  erb :compliment
end

get ("/:name") do
  @personalized = "Hello #{params[:name]}"
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end


post ("/") do
  compliments.push(params[:compliment])
end
