=begin
=end
require 'test/unit/assertions'
include Test::Unit::Assertions
# require 'byebug'


# We use the sliding window technique to solve this problem
# This algorithm’s big O is O(n*m) where n is the length of
# the array and m is the number of consecutive elements.
def largest_product_in_a_series(n)
  test_str = '731671765313306249192251196744265747423553491949349698352031277'\
  '450632623957831801698480186947885184385861560789112949495459501737958331952'\
  '853208805511125406987471585238630507156932909632952274430435576689664895044'\
  '524452316173185640309871112172238311362229893423380308135336276614282806444'\
  '486645238749303589072962904915604407723907138105158593079608667017242712188'\
  '399879790879227492190169972088809377665727333001053367881220235421809751254'\
  '540594752243525849077116705560136048395864467063244157221553975369781797784'\
  '617406495514929086256932197846862248283972241375657056057490261407972968652'\
  '414535100474821663704844031998900088952434506585412275886668811642717147992'\
  '444292823086346567481391912316282458617866458359124566529476545682848912883'\
  '142607690042242190226710556263211111093705442175069416589604080719840385096'\
  '245544436298123098787992724428490918884580156166097919133875499200524063689'\
  '912560717606058861164671094050775410022569831552000559357297257163626956188'\
  '2670428252483600823257530420752963450'
  str_len = test_str.length
  str_arr = test_str.split('')
  max_product = 1
  product = 1
  0.upto(str_len - 1 - n) do |i|
    i.upto(i+n-1) do |j|
      product *= str_arr[j].to_i
    end
    max_product = product if product > max_product
    product = 1
  end
  max_product
end

assert_equal(648, largest_product_in_a_series(3))
assert_equal(5832, largest_product_in_a_series(4))
assert_equal(23514624000, largest_product_in_a_series(13))