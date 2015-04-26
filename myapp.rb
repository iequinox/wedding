require 'sinatra'
#require 'mongo'

set :port, 8080
set :bind, '0.0.0.0'

get '/wedding' do
  erb :wedding
end
