raise ArgumentError.new("input file is required") if ARGV.empty?

while line = ARGF.gets
  line.chomp!
  puts line.split(',').uniq.join(',') if line != ""
end
