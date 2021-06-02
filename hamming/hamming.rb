module Hamming
  extend self

  def compute(str1, str2)
    raise ArgumentError unless str1.size == str2.size

    differences = 0
    str1.chars.each_with_index do |letter, index|
      differences += 1 if letter != str2[index]
    end
    differences
  end
end
