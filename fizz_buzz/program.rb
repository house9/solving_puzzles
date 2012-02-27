require 'fizz_buzz'

puts "========================="
puts "=== FIZZ BUZZ"
puts "=== http://en.wikipedia.org/wiki/Bizz_buzz"
puts "========================="

o = FizzBuzz.new
puts o.start

while number = o.next do
  puts number
end

puts "END..."
puts "========================="