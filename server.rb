require 'sinatra'
require 'koala'

set :protection, :except => :frame_options
set :views, 'views'
get '/' do
  erb :index
end

post '/' do
  erb :index
end

post '/submit' do
  @thought = params[:thoughts]

  File.read('./views/thoughts.erb.html')
end

get '/submit' do
  @thought = params[:thoughts]

  File.read('./views/thoughts.erb.html')
end