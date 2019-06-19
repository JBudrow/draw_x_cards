require 'sinatra'
require './models/mongodb'

##### Root #####

get '/' do 
  'Shenanigans'
end 

##### Card #####

# GET cards#index
get '/cards' do 
  @cards = CARDS.find().limit(20)
  erb :cards 
end 

##### Set ######

# GET sets#index
get '/sets' do 
  @sets = SETS.find().limit(20)
  erb :sets 
end 