require 'sinatra'
require './models/mongodb'

get '/' do 
  'Shenanigans'
end 

get '/cards' do 
  @cards = CARDS.find()
  erb :cards 
end 