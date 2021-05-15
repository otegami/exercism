module Hamming
  def self.compute(strand1, strand2)
    raise StrandLengthError unless strand1.length == strand2.length

    nucleotides = strand1.chars.zip(strand2.chars)
    nucleotides.count { |nt1, nt2| nt1 != nt2 }
  end

  class StrandLengthError < ArgumentError
    def initialize(message: 'strand lengths must be identical')
      super(message)
    end
  end
end