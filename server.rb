require 'sinatra'
require 'sinatra/reloader'

get '/' do
#   @compliment = compliments = [
#   "Your instructors love you",
#   "High five = ^5",
#   "Is it Ruby Tuesday yet?",
#   "It's almost beer o'clock",
#   "The Force is strong with you"
# ].sample
#
#   @color = colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"].sample
  erb :compliment

end
