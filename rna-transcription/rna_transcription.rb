module Complement
  DICTIONARY = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(string)
    result = ''
    string.each_char { |c| result << DICTIONARY[c] }
    result
  end
end
