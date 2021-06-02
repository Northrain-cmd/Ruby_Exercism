module Grains
  def self.square(number)
    raise ArgumentError, 'number must be 1 to 64' unless number.between?(1,64)

    1 << number - 1
  end

  def self.total
    (1 << 64) - 1
  end
end