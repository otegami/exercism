class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides.sort
  end

  def equilateral?
    @equilateral ||= property.size == 1 if triangle?
  end

  def isosceles?
    @isosceles ||= property.size <= 2 if triangle?
  end

  def scalene?
    @scalene ||= property.size == 3 if triangle?
  end

  def degenerate?
    @degenerate ||= sides[2] == sides[0] + sides[1]
  end
  
  def property
    sides.uniqs
  end

  def triangle?
    ( sides[0] - sides[1] ).abs < sides[2] && sides[2] < sides[0] + sides[1]
  end
end