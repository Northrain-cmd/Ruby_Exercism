# frozen_string_literal: true

# Works with a digit series
class Series
  def initialize(digits)
    @digits = digits.split('')
  end

  def slices(size)
    raise ArgumentError if @digits.size < size

    result = []
    @digits.each_with_index do |_, index|
      unless index.nil? || @digits[index...index + size].size < size
        result << @digits[index...index + size].join
      end
    end
    result
  end
end
