module Hamming
  def self.compute(strand1, strand2) 
    raise ArgumentError unless strand1.length == strand2.length

    nucleotides = strand1.chars.zip(strand2.chars)
    nucleotides.each.count do |nucleotide1, nucleotide2|
      nucleotide1 != nucleotide2
    end
  end
end