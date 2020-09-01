# rubocop:disable Layout/LineLength
module RubyCodes
  class Bot < SlackRubyBot::Bot
    help do
      title 'Ruby Codes Bot'
      desc 'This bot is about Ruby Code Snippets.'

      command :strings do
        title 'strings'
        desc 'Returns the url of the wiki page of Ruby Strings'
        long_desc 'Strings in Ruby are objects, and unlike other languages, strings are mutable, which means they can be changed in place instead of creating new strings. You will use strings in almost every program you write.'
      end

      command :arrays do
        title 'arrays'
        desc 'Returns the url of the wiki page of Ruby Arrays'
        long_desc 'Arrays are ordered, integer-indexed collections of any object.
        Array indexing starts at 0, as in C or Java. A negative index is assumed to be relative to the end of the array---that is, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.'
      end

      command :control_structures do
        title 'control_structures'
        desc 'Returns the url of the wiki page of Ruby Control Structures'
        long_desc 'Ruby has all the usual control structures, such as if statements and while loops. Java, C, and Perl programmers may well get caught by the lack of braces around the bodies of these statements. Instead, Ruby uses the keyword end to signify the end of a body.'
      end

      command :blocks_and_iterators do
        title 'blocks_and_iterators'
        desc 'Returns the url of the wiki page of Ruby Blocks and Iterators'
        long_desc 'Code blocks are used throughout the Ruby library to implement iterators: methods that return successive elements from some kind of collection, such as an array. You could then iterate over an arrays elements by calling its each method and supplying a block. This block would be called for each element in turn.'
      end

      command :classes do
        title 'classes'
        desc 'Returns the url of the wiki page of Ruby classes'
        long_desc 'Strings in Ruby are objects, and unlike other languages, strings are mutable, which means they can be changed in place instead of creating new strings. You will use strings in almost every program you write.'
      end
    end
  end
end
# rubocop:enable Layout/LineLength
