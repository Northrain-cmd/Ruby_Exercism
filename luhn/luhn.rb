class Luhn
  def self.valid?(input)
    return false if input.match(/[^\s\d]/)

    number = input.reverse.scan(/\d/)
    res = number.each_with_index.map do |digit, i|
      digit = digit.to_i
      if i.odd?
        return 1 if digit == 9
        digit * 2 % 9
      else
        digit
      end
    end
    res.sum % 10 == 0 unless res.size < 2
  end
end
