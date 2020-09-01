require 'slack-ruby-bot'
require_relative '../lib/commands/get_wiki.rb'
require_relative '../lib/bot.rb'

## For RSpec Testing Only ##
class TestCases
  def add(num, num2)
    num + num2
  end

  def multiply(num, num2)
    num * num2
  end
end
