require 'sinatra'
require 'koala'

set :protection, :except => :frame_options
set :views, 'views'
get '/' do
  # @@graph = Koala::Facebook::GraphAPI.new
  erb :index
end

post '/' do
  erb :index
end

post '/submit' do
  @thought = params[:thoughts]
  erb :thoughts
end