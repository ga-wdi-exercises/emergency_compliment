require "sinatra"
require "sinatra/reloader"

compliments = [
  "Everyone loves you.",
  "Good vibes only, I like it!",
  "I see you!",
  "You SHOW STOPPER, you",
  "You must be here for the model shoot."
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get ("/")  do
  @greeting = "Long time no see, what's happenin'"
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end

get ("/:name") do
  @greeting = "Yooo #{params[:name].capitalize}!"
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end

post ("/") do
  compliments.push(params[:compliment])
end
