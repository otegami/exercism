class Matrix
  attr_reader :rows

  def initialize(rows)
    @rows = rows.split(/\n/).map { |row| row.split.map(&:to_i) }
  end

  def columns
    @coulmns ||= rows.transpose
  end
end