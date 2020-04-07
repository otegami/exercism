class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides.sort
  end

  def equilateral?
    sameLengthSides == 3 if inequality?
  end

  def isosceles?
    sameLengthSides >= 2 if inequality?
  end

  def scalene?
    sameLengthSides == 0 if inequality?
  end

  def degenerate?
    sides[2] == sides[0] + sides[1]
  end

  def sameLengthSides
    result = sides.slice_when { |i, j| i == j }.to_a.size
    result == 1 ? 0 : result
  end

  def inequality?
    sides[2] < sides[0] + sides[1]
  end
end