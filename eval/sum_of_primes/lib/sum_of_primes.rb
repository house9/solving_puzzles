require 'mathn'

class SumOfPrimes
  
  def run
    total = 0
    Prime.each_with_index do |number, index|
      break if index > 1000
      total = total + number
    end
    puts total
  end
    
end
