require 'mongo'

# Mongo::Client
CLIENT =  Mongo::Client.new(ENV["MONGODB_URI"])
# Mongo::Database
DB     = CLIENT.database
# Mongo::Collection
CARDS  = CLIENT[:cards]
SETS   = CLIENT[:sets]