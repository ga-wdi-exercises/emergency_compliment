require "sinatra"
require "sinatra/reloader"


compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get '/' do
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end

get '/empty_compliment' do
  erb :empty_compliment
end

get '/:name' do
  @name = params[:name].to_s
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end

post '/create' do
  if params[:new] == ""
    redirect :empty_compliment
  end
  compliments << params[:new]
  redirect "/"
end
