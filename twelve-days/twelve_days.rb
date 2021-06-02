module TwelveDays
  SONG = [
   { first: "and a Partridge in a Pear Tree" },
   { second: "two Turtle Doves" },
   { third: "three French Hens" },
   { fourth: "four Calling Birds" },
   { fifth: "five Gold Rings" },
   { sixth: "six Geese-a-Laying" },
   { seventh: "seven Swans-a-Swimming" },
   { eighth: "eight Maids-a-Milking" },
   { ninth: "nine Ladies Dancing" },
   { tenth: "ten Lords-a-Leaping" },
   { eleventh: "eleven Pipers Piping" },
   { twelfth: "twelve Drummers Drumming" }
  ].freeze
  
  def self.song
    line = ''
    presents = []
    0.upto(11) do |i|
      presents.unshift("#{SONG[i].values[0]}")
      line += "On the #{SONG[i].keys[0]} day of Christmas my true love gave to me: " + presents.join(", ") + ".\n\n"
      line.sub!(/and a Partridge/, "a Partridge") if i.zero?
    end
    line.chomp
  end
end
