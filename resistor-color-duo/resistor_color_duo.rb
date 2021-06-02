# frozen_string_literal: true

# Calculates resistors
module ResistorColorDuo
  @dictionary = {
    'black' => '0',
    'brown' => '1',
    'red' => '2',
    'orange' => '3',
    'yellow' => '4',
    'green' => '5',
    'blue' => '6',
    'violet' => '7',
    'grey' => '8',
    'white' => '9'
  }
  def self.value(colors)
    (@dictionary[colors[0]] + @dictionary[colors[1]]).to_i
  end
end
