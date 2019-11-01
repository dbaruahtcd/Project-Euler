=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the nth prime number?
=end
require '../spec_helper'

def nth_prime(n)
  prime_array = [2]
  num = 3
  while( prime_array.length < n)
    max = Math.sqrt(num).ceil
    arr = prime_array.select{|i| i <= max}.select { |i| num % i == 0 }
    prime_array.push(num) if arr.count == 0
    num += 2 #an optimization where we skip the evens
  end
  prime_array.last
end

assert_equal(7, nth_prime(4))
assert_equal(29, nth_prime(10))
assert_equal(541, nth_prime(100))
assert_equal(7919, nth_prime(1000))
assert_equal(104743, nth_prime(10001))
