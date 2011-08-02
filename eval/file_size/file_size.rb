raise ArgumentError.new("input file is required") if ARGV.empty?
puts File.size(ARGV[0])
