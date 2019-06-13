require 'sinatra'
require './models/mongodb'

get '/' do 
  'Shenanigans'
end 

get '/cards' do 
  @cards = CARDS.find().limit(20)
  erb :cards 
end 