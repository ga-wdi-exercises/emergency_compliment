require 'sinatra'
# require 'sinatra/reloader'

compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet? <---HA!",
  "It's almost beer o'clock",
  'Your wedding singer, Andy, says he doesn`t mind serenading your grandmother',
  "The Force is strong with you"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get '/' do
  @greeting = "How we doin'? I'm good"
  @compliment = compliments.sample
  @colors = colors.sample
  erb :compliment
end

get ("/:name") do
  @greeting = "How ya doin' #{params[:name].capitalize}"
  @compliment = compliments.sample
  @color = color.sample
  erb :compliment
end

post ("/") do
  compliments.push(params[:compliment])
end
