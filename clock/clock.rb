class Clock
  attr_reader :hour, :minute

  def initialize(options = {})
    @hour = options[:hour] || 0
    @minute = options[:minute] || 0
  end

  def to_s
    Time.at(@hour * 3600 + @minute * 60).utc.strftime('%H:%M')
  end

  def +(other)
    @hour += other.hour
    @minute += other.minute
    to_s
  end

  def -(other)
    @hour -= other.hour
    @minute -= other.minute
    to_s
  end

  def ==(other)
    to_s == other.to_s
  end
end
