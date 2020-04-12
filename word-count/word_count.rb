require 'pry'

class Phrase
  attr_reader :words

  def initialize(words)
    @words = words.split(/[ , \,, \n]/)
  end

  def word_count
    words.each_with_object({}){ |word, count| include?(word, count) }
  end

  private
  def include?(word, hash)
    hash.has_key?(word) ? hash[word] += 1 : hash[word] = 1
  end
end