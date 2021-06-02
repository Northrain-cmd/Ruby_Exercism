require 'pry'

class Robot
  attr_reader :name
  @@names = []

  def initialize
    @name = random_name
    @@names << @name
  end

  def self.forget; end

  def reset
    @name = random_name
    @@names << @name
  end

  private

  def random_name
    name = ''
    loop  do 
      name = random_letter + random_letter + rand(10).to_s + rand(10).to_s + rand(10).to_s

      break unless @@names.include?(name)
    end
    name
  end

  def random_letter
    rand(65..90).chr
  end
end