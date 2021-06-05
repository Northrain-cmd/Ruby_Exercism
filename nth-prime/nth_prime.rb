module PrimesHelper
  def nth(number)
    raise ArgumentError, "Must be greater than 0" if number <= 0

    primes = []
    i = 2
    until primes.size == number
      primes << i if prime?(i)
      i += 1
    end
    primes[number - 1]
  end

  def prime?(number)
    result = true
    i = 2
    loop do
      result = false if (number % i).zero? && i != number
      i += 1
      break if i > Integer.sqrt(number)
    end
    result
  end
end

class Prime
  extend PrimesHelper
end
