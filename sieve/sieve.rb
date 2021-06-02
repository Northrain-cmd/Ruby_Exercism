class Sieve
  def initialize(limit)
    @limit = limit
    @range = (2..limit).to_a
  end

  def primes
    primes = @range
    primes.each do |i|
      2.upto @limit / 2 do |j|
        primes -= [i * j]  
      end
    end
    primes
  end
end
