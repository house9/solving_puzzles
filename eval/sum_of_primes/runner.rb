require 'mathn'

total = 0
Prime.each_with_index do |number, index|
  break if index >= 1000
  total = total + number
end
puts total


# require_relative 'lib/sum_of_primes'
# 
# 
# # run
# SumOfPrimes.new().run
