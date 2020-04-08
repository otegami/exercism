require 'set'

class SumOfMultiples
  attr_reader :multiples

  def initialize(*numbers)
    @multiples  = numbers.nil? ? 0 : numbers
  end

  def to(upper_limit_number)
    get_all_of_multiples(upper_limit_number).nil? ? 0 : get_all_of_multiples(upper_limit_number).sum
  end

  def get_all_of_multiples(upper_limit_number)
    @allMultiples ||= multiples.map { |num| multiple_of(num, upper_limit_number) }.reduce(:+).to_a
  end

  def multiple_of(number, upper_limit_number)
    Set.new( (1...to_number).select { |n| n % number == 0 } )
  end
end