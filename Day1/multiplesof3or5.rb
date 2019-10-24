=begin
Problem statement
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below the provided parameter value number.
=end


require "test/unit/assertions"
include Test::Unit::Assertions

  def multiplesOf3or5(number)
    multiples = []
    (1...number).each do |num|
      if (num % 3) == 0
        multiples << num
      elsif (num % 5) == 0
        multiples << num
      else
        next
      end
    end
    return multiples.inject(0, :+)
  end

assert_equal(multiplesOf3or5(10), 23)
assert_not_equal(multiplesOf3or5(11), 23)
assert_equal(multiplesOf3or5(1000), 233168)
assert_equal(multiplesOf3or5(49), 543)
assert_equal(multiplesOf3or5(19564), 89301183)
