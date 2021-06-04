module RomanNumerals
  DICT = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }.freeze

  def to_roman
    ms = self.div(1000)
    cs = (self % 1000).div(100)
    xs = (self % 1000 % 500 % 100).div(10)
    ones = (self % 1000 % 500 % 100 % 50 % 10).div(1)
    ('M' * ms) + convert_to_roman(cs, 100, 500, 1000) + 
                 convert_to_roman(xs, 10, 50, 100) + 
                 convert_to_roman(ones,1, 5, 10)
  end

  private

  def convert_to_roman(number_of_symbols, number, next_number, next_next_number)
    mids = number_of_symbols.div(5)
    result = (DICT[next_number] * mids) + (DICT[number] * (number_of_symbols % 5))
    case number_of_symbols
    when 4 
      result = DICT[number] + DICT[next_number]
    when 9
      result = DICT[number] + DICT[next_next_number]
    end
    result
  end
end

class Integer
  include RomanNumerals
end
