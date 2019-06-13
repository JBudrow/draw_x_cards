path = File.expand_path("../", __FILE__)

require 'rubygems'
require 'sinatra'
require 'dotenv/load'
require "#{path}/app"

run Sinatra::Application