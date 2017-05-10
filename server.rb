require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

compliments = [
  "Wow your code is so elegant",
  "Did you get a haircut? you look nice",
  "Have you been working out?",
  "You really killed it in slips today",
  "The Force is strong with you"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]


get '/' do
  @compliment = compliments.sample
  @colors = colors.sample
  erb :compliment
end

get '/:name' do
  @personal = "<div>Hi #{params[:name]}, here is your personalized compliment:</div>"
  @compliment = compliments.sample
  @colors = colors.sample
  erb :compliment
end

post '/reset' do
  @compliment = compliments.sample
  @colors = colors.sample
  erb :compliment
  # redirect '/'
end

post '/' do
  @compliment = compliments.sample
  compliments << params[:comp]
  erb :compliment
  redirect '/'
end
