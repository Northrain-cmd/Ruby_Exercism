module RomanNumerals
  DICT = [
    [1, 'I'],
    [4, 'IV'], 
    [5, 'V'],
    [9, 'IX'],
    [10, 'X'],
    [40, 'XL'],
    [50, 'L'],
    [90, 'XC'],
    [100, 'C'],
    [400, 'CD'],
    [500, 'D'],
    [900, 'CM'],
    [1000, 'M']
  ].reverse.freeze

  def to_roman
    x = self
    DICT.each_with_object('') do |(number, roman), result| 
      times, x = x.divmod(number)
      result << roman * times
    end
  end
end

class Integer
  include RomanNumerals
end
