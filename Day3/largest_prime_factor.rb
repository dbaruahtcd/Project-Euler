=begin
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the given number?
=end

require '../spec_helper'

# Starting at 2 continuously divide until it's no longer divisible. Then
# increment the divisor and continue until the number is 1
def largest_prime_factor(number)
  prime = 2
  max = 1
  while (prime <= number)
    if(number % prime == 0)
      max = prime
      number = number/prime
    else
      prime += 1
    end
  end
  max
end

assert_equal(2, largest_prime_factor(2))
assert_equal(3, largest_prime_factor(3))
assert_equal(5, largest_prime_factor(5))
assert_equal(29, largest_prime_factor(13195))
assert_equal(6857, largest_prime_factor(600851475143))
