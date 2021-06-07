module RunLengthEncoding
  def self.encode(input)
    result = ''
    array = input.split('')
    count = 0
    array.each_with_index do |letter, index|
      count += 1
      if array[index + 1] != letter
        result << print_count(count) + letter
        count = 0
      end
    end
    result
  end

  def self.decode(input)
    result = ''
    input.scan(/\d*[a-zA-Z\s]/).each do |code|
      number = code.match(/\d+/) || 1
      letter = code.match(/[a-zA-Z\s]/)[0]
      times = number[0].to_i || 1
      result << letter * times
    end
    result
  end

  def self.print_count(count)
    return '' if count == 1
    
    count.to_s
  end
end
