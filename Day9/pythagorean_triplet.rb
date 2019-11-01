=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the
product abc such that a + b + c = n.
=end

require '../spec_helper'

def pythagorean_triplet(n)
  sum_of_abc = n
  a = 1
  b = a

  a.upto(n) do |ai|
    b.upto(n) do |bj|
      c = n - ai - bj
      if((c > 0) && (ai**2 + bj**2 == c**2)) #&& (ai + bj + c = n))
          return ai * bj * c
      end
    end
  end
  return 99
end

assert_equal(480, pythagorean_triplet(24))
assert_equal(49920, pythagorean_triplet(120))
assert_equal(31875000, pythagorean_triplet(1000))
