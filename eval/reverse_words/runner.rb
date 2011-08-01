require_relative 'lib/reverse_words'


# run
raise ArgumentError.new("input file is required") if ARGV.empty?
ReverseWords.new(ARGV[0]).run.each { |line| puts line }