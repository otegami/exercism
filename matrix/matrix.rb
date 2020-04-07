class Matrix
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    @rows ||= matrix.lines.map { |row| row.split.map(&:to_i) }
  end

  def columns
    @coulmns ||= rows.transpose
  end
end