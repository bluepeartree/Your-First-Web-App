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

get '/favourites' do
  @favourites = {"Twitter" => "https://twitter.com/", "BBC News" => "http://www.bbc.com/news", "Toronto Star" => "https://www.thestar.com/", "Vulture" => "http://www.vulture.com/", "AV Club" =>"https://www.avclub.com/"}
  erb :favourites
end

get '/' do
  redirect to ('/home')
end

get '/gallery' do
  redirect to ('/portfolio')
end
