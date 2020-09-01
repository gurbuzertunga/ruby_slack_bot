require 'open-uri'

module RubyCodes
  module Commands
    class GetWiki < SlackRubyBot::Commands::Base
      command 'strings' do |client, data, _match|
        client.say(channel: data.channel, text: 'https://en.wikipedia.org/wiki/Ruby_(programming_language)#Strings')
      end

      command 'arrays' do |client, data, _match|
        client.say(channel: data.channel, text: 'https://en.wikipedia.org/wiki/Ruby_(programming_language)#Collections')
      end

      command 'control_structures' do |client, data, _match|
        client.say(channel: data.channel, text: 'https://en.wikipedia.org/wiki/Ruby_(programming_language)#Control_structures')
      end

      command 'blocks_and_iterators' do |client, data, _match|
        client.say(channel: data.channel, text: 'https://en.wikipedia.org/wiki/Ruby_(programming_language)#Blocks_and_iterators')
      end

      command 'classes' do |client, data, _match|
        client.say(channel: data.channel, text: 'https://en.wikipedia.org/wiki/Ruby_(programming_language)#Classes')
      end

      command 'say_hello' do |client, data, _match|
        client.say(channel: data.channel, text: HelloText.say_hello)
      end
    end
  end
end

class HelloText
  def self.say_hello
    'Hello! This is a Bot!'
  end
end
