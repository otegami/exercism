require 'set'

class SumOfMultiples
  attr_reader :multiples

  def initialize(*numbers)
    @multiples  = numbers
  end

  def to(upper_limit_number)
    get_all_multiples_of_numbers(upper_limit_number).reduce(0, :+)
  end

  def get_all_multiples_of_numbers(upper_limit_number)
    (1...upper_limit_number).select { |number| check_multiple?(number) }
  end

  def check_multiple?(number)
    multiples.any? { |num| number % num == 0 }
  end
end