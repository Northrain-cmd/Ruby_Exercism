module Accumulatable
  def accumulate
    return to_enum(:accumulate) unless block_given?

    result = []
    each { |number| result << yield(number) }
    result
  end
end

class Array
  include Accumulatable
end
