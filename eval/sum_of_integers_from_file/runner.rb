raise ArgumentError.new("input file is required") if ARGV.empty?

total = 0
while line = ARGF.gets
  line.chomp!
  unless line == "" then
    total = total + line.to_i
  end  
end
puts total

# file = File.open(ARGV[0])
# file.each do |line|
#   line.chomp!
#   line_total = 0
#   if line == "" then
#     puts 0
#   else
#     line.each_char do |n|
#       line_total = line_total + n.to_i
#     end
#     puts line_total
#   end  
# end
# file.close
