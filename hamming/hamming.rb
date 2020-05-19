module Hamming
  def self.compute(strand1, strand2)
    if strand1.length == strand2.length
      strand1.each_char.with_index.count do |nucleotide, index|
        nucleotide != strand2[index]
      end
    else
      raise ArgumentError
    end
  end
end