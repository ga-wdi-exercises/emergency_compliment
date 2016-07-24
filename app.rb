require "sinatra"
require "sinatra/reloader"

colors = ["rgb(195, 20, 189)", "rgb(238, 41, 14)","rgb(240, 148, 11)","rgb(245, 242, 7)", "rgb(39, 208, 30)", "rgb(9, 38, 232)", "rgb(254, 27, 170)"]

compliments = [
  "Your instructors love you!",
  "Everyone thinks you're a genius.",
  "Don't stop never stopping!",
  "You are a gilded tropical angelfish.",
  "Malala is writing her next inspirational book about YOU!",
  "You are really really really good looking.",
  "I would give up the last life jacket for you."
]

get "/" do
  "<body style='background-color:#{colors.sample}'>
  <h1>#{compliments.sample}</h1>"
end

get "/:name" do
  "<body style='background-color:#{colors.sample}'>
  <h1>#{params[:name]}, you are the greatest ever. #{compliments.sample}</h1>"
end
