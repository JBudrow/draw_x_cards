require 'mongo'
require './models/mongo_module'

## https://docs.mongodb.com/ruby-driver/master/quick-start/
# Mongo::Client 
CLIENT = Mongo::Client.new('mongodb://127.0.0.1:27017/draw_cards')
# Mongo::Database
DB     = CLIENT.database
# Mongo::Collection
CARDS  = CLIENT[:cards]

# collection.find.each do |document|
  #=> Yields a BSON::Document
# end

# following prints
# puts collection.find({name: "Archmage's Charm"}).first

# set to variable 
# card = collection.find({name: "Archmage's Charm"}).first['mtgo_id']



