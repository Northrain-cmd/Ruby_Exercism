class Bob
  def self.hey(remark)
    remark.strip!
    result = 'Whatever.'
    if remark == remark.upcase && remark.match?(/[A-Z](?=\?$)/)
      result = "Calm down, I know what I'm doing!"
    elsif remark == remark.upcase && remark.match?(/[A-Z]/)
      result = 'Whoa, chill out!'
    elsif remark[-1] == '?'
      result = 'Sure.'
    elsif remark.empty? 
      result = 'Fine. Be that way!'
    end
    result
  end
end
