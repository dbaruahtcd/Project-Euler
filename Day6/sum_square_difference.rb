=begin
The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
Find the difference between the sum of the squares of the first n natural numbers and the square of the sum.
=end

require 'test/unit/assertions'
include Test::Unit::Assertions

def sum_square_difference(n)
  square_of_sum = (1..n).to_a.reduce(0, :+) ** 2
  sqrd_arr = (1..n).to_a.map { |i| i * i }
  sum_of_squares = sqrd_arr.reduce(0, :+)
  square_of_sum - sum_of_squares
end

# Uses formula to compute the sum instead
def sum_square_difference_v2(n)
  sum_of_n = (n * (n + 1))/2
  sum_of_n_squared = (n * (n + 1) * ( 2*n + 1))/ 6
  (sum_of_n ** 2 - sum_of_n_squared)
end

assert_equal(2640, sum_square_difference(10))
assert_equal(41230, sum_square_difference(20))
assert_equal(25164150, sum_square_difference(100))
