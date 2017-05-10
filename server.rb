require "sinatra"
require "sinatra/reloader"


compliments = ["You're the other side of the pillow type cool",
  "You special, you da best",
  "Your power level is way above 9000",
  "You're supah smaht",
  "Your chakra is absurd"]
name = ["buddy", "bro", "homie", "chica", "ninja", "senorita", "cuzz", "babyboy", "YOU", "mang"]
colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]
get '/' do
  @compliment = compliments.sample
  @name = name.sample
  @color = colors.sample
  erb :compliment
  # return "Hey #{@name}! I have something to tell you<br>#{@compliment}"
end

# When you visit "/name" (ie: "/randy"), the greeting should personalize itself to the provided name. There should still be a random compliment and background color.
get '/name' do
  @greeting = "Hey #{@name}! I have something to tell you<br>#{@compliment}"
  @color = colors.sample
  erb :layout
end



# post '/' do
# @color = colors.sample
#   # compliments.push =
#   erb :compliment
# end
