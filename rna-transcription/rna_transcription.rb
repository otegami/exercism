class Complement
  DNATORNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }
  def self.of_dna(dna)
    rna = ''
    dna.chars.each do |element|
      rna += DNATORNA[element]
    end
    rna
  end
end