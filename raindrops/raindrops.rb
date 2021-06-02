# frozen_string_literal: false

# Raindrops calculations
class Raindrops
  DICT = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  def self.convert(number)
    result = ''
    DICT.each do |n, sound|
      result.concat(sound) if (number % n).zero?
    end
    result.empty? ? number.to_s : result
  end
end
