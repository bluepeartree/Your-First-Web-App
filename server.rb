require 'sinatra'

get '/home' do
  # instructions for what to do when user visits '/home' will go here
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['BEING AWESOME', 'baking', 'ruby', 'git', 'html']
  @interests = ['comic book movies', 'detective fiction', 'music', 'tea']

  erb :details
end
