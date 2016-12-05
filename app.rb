require 'sinatra'
require 'pry'
require 'json'

set :public_folder, Proc.new { File.join(root, "public") }

get '/' do
  File.read('public/index.html')
end

get '/clinton_tweets' do 
  content_type :json
  content = File.read("db/clinton.json")
  content
end

get '/trump_tweets' do 
  content_type :json
  content =File.read("db/trump.json")
  content
end
