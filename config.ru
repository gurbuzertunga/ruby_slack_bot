$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require_relative 'main.rb'

RubyCodes::Bot.run
