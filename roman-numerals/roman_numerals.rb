module RomanNumerals
  DICT = {
    '1' => 'I',
    '5' => 'V',
    '10' => 'X',
    '50' => 'L',
    '100' => 'C',
    '500' => 'D',
    '1000' => 'M'
  }.freeze

  def to_roman
    number = self
    ms = number.div(1000)
    ds = (number % 1000).div(500)
    cs = (number % 1000 % 500).div(100)
    ls = (number % 1000 % 500 % 100).div(50)
    xs = (number % 1000 % 500 % 100 % 50).div(10)
    vs = (number % 1000 % 500 % 100 % 50 % 10).div(5)
    ones = (number % 1000 % 500 % 100 % 50 % 10 % 5).div(1)
    ('M' * ms) + ('D' * ds) + ('C' * cs) + ('L' * ls) + ('X' * xs) + ('V' * vs) + odd_helper(ones, 'I', 'V')
  end

  private

  def odd_helper(number_of_symbols, translation, next_number)
    result = translation * number_of_symbols
    if number_of_symbols == 4
      result = translation + next_number
    elsif number_of_symbols == 9

    end
    result
  end
end

class Integer
  include RomanNumerals
end

