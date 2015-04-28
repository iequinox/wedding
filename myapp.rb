require 'sinatra'

set :port, 8080
set :bind, '0.0.0.0'

tucao_arr = File.open('./config/tucao.txt') do |f|
  f.readlines.map {|l| l.gsub(/^-$/,'').strip}
end

get '/wedding' do
  easter_on = request.cookies["easterEgg"] == "true"
  erb :wedding, {}, {'tucao_arr' => tucao_arr, 'easter_on' => easter_on}
end
