=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below n.
=end

require '../spec_helper'

# Solved using Sieve of Eratosthenes
# Given n list number from 2..n.
# Starting at 2, mark all number greater than or equal to 2^2
# Move on to the next unmarked number.
# When the end is reached, the numbers that are unmarked are prime
def prime_summation(n)
  num_arr = Array.new(n, 0)
  for i in (2..n) do
    # check if already hasn't been marked
    if i != 1
      num_squared = i**2
      for j in(num_squared..n) do
        num_arr[j] = 1 if j % i == 0
      end
    else
      next
    end
  end
  # instead of summing by index, we could initialize the array with the numbers
  # from 0 to n. Currently we are initialzing with 0.
  sum = 0
  for k in (2..(num_arr.length)) do
    if(num_arr[k] == 0)
      sum += k
    end
  end
  sum
end

# puts prime_summation(2000000) #142913828922
assert_equal(17, prime_summation(10))
assert_equal(41, prime_summation(17))
assert_equal(277050, prime_summation(2001))
assert_equal(873608362, prime_summation(140759))
