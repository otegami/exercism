class Series
  attr_reader :series

  def initialize(series)
    @series = series
  end

  def slices(number)
    raise ArgumentError if series.length < number || number < 0
    the_digits.each_cons(number).map { |digit| digit.join }
  end

  private
  
  def the_digits
    series.chars
  end
end