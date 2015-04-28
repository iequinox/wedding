require 'sinatra'
#require 'mongo'

set :port, 8080
set :bind, '0.0.0.0'

tucao_arr = File.open('./config/tucao.txt') do |f|
  f.readlines.map {|l| l.gsub(/^-$/,'').strip}
end

get '/wedding' do
  erb :wedding, {}, {'tucao_arr' => tucao_arr}
end
