class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    range = (1..@number)
    range.sum**2
  end

  def sum_of_squares
    range = (1..@number)
    range.reduce(0) { |sum, i| sum + i**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end