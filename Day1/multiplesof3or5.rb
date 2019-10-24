=begin
Problem statement
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below the provided parameter value number.
=end


require "test/unit/assertions"
include Test::Unit::Assertions

def multiplesOf3or5(number)
  sum = 0
  i = 3
  while(i < number)
    if( i % 3 == 0 || i % 5 == 0)
      sum = sum + i
    end
    i += 1
  end
  return sum
end


assert_equal(multiplesOf3or5(10), 23)
assert_not_equal(multiplesOf3or5(11), 23)
assert_equal(multiplesOf3or5(1000), 233168)
assert_equal(multiplesOf3or5(49), 543)
assert_equal(multiplesOf3or5(19564), 89301183)
