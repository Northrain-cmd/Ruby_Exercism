class Matrix
  def initialize(string)
    @matrix = []
    string.each_line do |row|
      @matrix << row.split.map(&:to_i)
    end
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end
end

