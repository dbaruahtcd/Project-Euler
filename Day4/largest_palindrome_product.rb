=begin
=end
require 'test/unit/assertions'
include Test::Unit::Assertions

def largest_palindrome_product(n)
  max = ('9' * n).to_i
  min = (max + 1)/10

  # solved using downto instead of for
  # max.downto(min) do |x|
  #   max.downto(min) do |y|
  #     product = x * y
  #     if is_palindrome?(product)
  #       return product
  #       break
  #     end
  #   end
  # end

  for x in (min..max).to_a.reverse do
    for y in (min..max).to_a.reverse do
      product = x * y
      if is_palindrome?(product)
        return product
        break
      end
    end
  end
end

def is_palindrome?(num)
  str = num.to_s
  len = str.length
  str_arr = str.split('')
  i = 0
  j = len - 1
  palindrome = true
  while(i < j)
    if(str_arr[i] == str_arr[j])
      i += 1
      j -= 1
    else
      palindrome = false
      break
    end
  end
  palindrome
end

assert(!is_palindrome?(123))
assert(is_palindrome?(123321))

assert_equal(580085, largest_palindrome_product(3))
assert_equal(9009, largest_palindrome_product(2))
