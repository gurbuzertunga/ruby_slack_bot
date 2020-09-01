require 'slack-ruby-bot'
require_relative '../lib/commands/get_wiki.rb'
require_relative '../lib/bot.rb'

## For RSpec Testing Only ##

class TestCases
  def add(a, b)
    a + b
  end

  def multiply(a, b)
    a * b
  end
end
