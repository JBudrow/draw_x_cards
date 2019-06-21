require 'sinatra'
require './documents/mongodb'

##### Root #####

get '/' do 
  'Shenanigans'
end 

##### Card #####

# GET cards#index
get '/cards' do 
  @cards = CARDS.find().limit(20)
  erb :user_cards_index 
end 

# GET cards#show
get '/cards/:set/:name' do 
  @card = CARDS.find(set: params[:set], name: params[:name])
  erb :cards_show
end 

##### Set ######

# GET sets#index
get '/sets' do 
  @sets = SETS.find().limit(20)
  erb :sets_index
end 

# GET sets#show
get '/sets/:set' do 
  @cards = CARDS.find(set: params[:set])
  erb :set_cards_show
end 