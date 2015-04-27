require 'sinatra'
#require 'mongo'

set :port, 8080
set :bind, '0.0.0.0'

get '/wedding' do
  tucao_arr = File.open('./config/tucao.txt') do |f|
    f.readlines.map {|l| l.gsub(/^-$/,'').strip}
  end
  erb :wedding, {}, {'tucao_arr' => tucao_arr}
end
