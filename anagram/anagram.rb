class Anagram
  attr_reader :base_word

  def initialize(base_word)
    @base_word = base_word.downcase
  end

  def match(words)
    words.select { |word| be_checked?(word.downcase) }
  end

  def be_checked?(word)
    !base_word.eql?(word) && base_word.chars.sort == word.chars.sort
  end
end