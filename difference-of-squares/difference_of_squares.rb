class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    ( number * ( number + 1) / 2 ) ** 2
    # numbers.sum ** 2
  end

  def sum_of_squares
    number * ( number + 1 ) * ( 2 * number + 1) / 6
    # numbers.sum { |i| i ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end

  # def numbers
  #   @numbers ||= (1..number)
  # end
end