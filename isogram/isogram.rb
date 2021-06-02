module Isogram
  def isogram?(input)
    string = input.downcase.scan(/\w+/).join
    string.each_char do |char|
      return false if string.scan(char).size > 1
    end
    true
  end
  module_function :isogram?
end
