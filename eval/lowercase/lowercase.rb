raise ArgumentError.new("input file is required") if ARGV.empty?

while line = ARGF.gets
  puts line.downcase
end

