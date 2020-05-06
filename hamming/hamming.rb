module Hamming
  def self.compute(*dna_data)
    data1, data2 = dna_data.map(&:chars)

    raise ArgumentError if data1.length != data2.length

    data1.each_with_index.inject(0) do |count, (element, ind)|
      element != data2[ind] ? count += 1 : count += 0
    end
  end
end