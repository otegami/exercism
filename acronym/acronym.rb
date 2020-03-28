class Acronym
  def self.abbreviate(string)
    string.split(/\W+/).map { |word| word[/(^\w)/, 1].upcase }.join
  end
end