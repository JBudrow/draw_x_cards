path = File.expand_path("../", __FILE__)

require 'rubygems'
require 'sinatra'
require 'dotenv'
require "#{path}/app"

Dotenv.load
run Sinatra::Application
