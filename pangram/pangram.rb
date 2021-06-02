module Pangram
  ALPHABET = 'a'..'z'

  def self.pangram?(sentence)
    ALPHABET.all? do |letter|
      sentence.downcase.include?(letter)
    end
  end
end