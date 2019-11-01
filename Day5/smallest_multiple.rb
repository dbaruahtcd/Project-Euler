=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to n?
=end
require '../spec_helper'

def smallest_multiple(num)
  # in order to solve this we would need to first find the gcd and then the lcm of the
  # numbers.
  max_lcm = 1
  (2..num).each do |n|
    max_lcm = lcm(max_lcm, n)
  end
  max_lcm
end

def lcm(a, b)
   (a * b)/euclid_div(a, b)
end

# GCD can be found by using Euclid algorithm which is based on the principle that the GCD
# of two numbers doesn't change if the larger number is replaced by its difference with
# the smaller number. Since the replacement reduces the larger of the two numbers, repeating
# the process gives successively smaller pairs of numbers until the two numbers become equal.
# When that occurs it's the GCD of the two numbers.
# Caveat is it would take a lot of substraction steps to find the GCD, if one number is much bigger than the other
def euclid_sub(a, b)
  while( a != b)
    a > b ? (a = a - b) : (b = b - a)
  end
  a
end

#this involves replacing the larger of the two numbers by its remainder when divided by
#the smaller of the two. The algorithm stops when reaching a zero remainder
def euclid_div(a, b)
  # a = [a, b].max
  # b = [a, b].min
  while( b > 0 )
    r = a % b
    a = b
    b = r
  end
  a
end

assert_equal(1, euclid_sub(2,3))
assert_equal(3, euclid_sub(3,9))
assert_equal(21, euclid_div(252,105)) # 21
assert_equal(21, euclid_div(105,252)) # 21

assert_equal(60 ,smallest_multiple(5))
assert_equal(420 ,smallest_multiple(7))
assert_equal(2520 ,smallest_multiple(10))
assert_equal(360360 ,smallest_multiple(13))
assert_equal(232792560 ,smallest_multiple(20))
