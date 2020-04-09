class Transpose
  attr_reader :rows, :max_row_length

  class << self
    def transpose(text)
      new(text).transpose
    end
  end

  def initialize(text)
    @rows = text.lines(chomp: true)
    @max_row_length = rows.map(&:length).max
  end

  def transpose
    char_arrays.transpose.map(&:join).join("\n").strip
  end

  def char_arrays
    rows.map { |row| row.ljust(max_row_length) }.map(&:chars)
  end
end