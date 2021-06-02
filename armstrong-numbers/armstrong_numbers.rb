class ArmstrongNumbers
  def self.include?(number)
    digits = number.digits
    size = digits.size
    digits.reduce(0) { |sum, digit| sum + digit**size } == number
  end
end
