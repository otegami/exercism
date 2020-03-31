class Pangram
  # I want to check Whether this attribute is pangram or not
  #   1. Turn this attribute to chatacters(chars).
  #   2. Check whether this chars have each alphabet or not.
  #   3. Return false if this chars doen't have every letter of the alphabet at least once.
  #   4. Return true if this chars does.
  
  def self.pangram?(word)
    chars = word.chars.map(&:downcase)
    ('a'..'z').each do |char|
       return false if !chars.any?(char)
    end
    true
  end
end