module ConvenientScoring
  def self.included(klass)
    klass.extend(self)
  end

  DICT = {
    'D' => 2, 'G' => 2, 
    'B' => 3, 'C' => 3, 'M' => 3, 'P' => 3,
    'F' => 4, 'H' => 4, 'V' => 4, 'W' => 4, 'Y' => 4,
    'K' => 5,
    'J' => 8, 'X' => 8,
    'Q' => 10, 'Z' => 10
  }.freeze

  def score(word = nil)
    word ||= ''
    word = word.match(/\w+/) ? word.match(/\w+/).to_s.chars : []
    word.reduce(0) do |sum, letter| 
      count = DICT[letter.upcase] || 1
      sum + count
    end
  end
end

class Scrabble
  include ConvenientScoring

  def initialize(word = nil)
    @word = word
  end

  def score
    super(@word)
  end
end
