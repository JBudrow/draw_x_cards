require 'mongo'
require './models/mongo_module'

# collection.find.each do |document|
  #=> Yields a BSON::Document
# end

# following prints
# puts collection.find({name: "Archmage's Charm"}).first

# set to variable 
# card = collection.find({name: "Archmage's Charm"}).first['mtgo_id']

## https://docs.mongodb.com/ruby-driver/master/quick-start/
# Local(for now) -> testing production connectivity
# Mongo::Client 
CLIENT = Mongo::Client.new(ENV['MONGODB_URI']) || Mongo::Client.new('mongodb://127.0.0.1:27017/draw_x_cards')
# Mongo::Database
DB     = CLIENT.database
# Mongo::Collection
CARDS  = CLIENT[:cards]

# mLab 
# Production
# todo