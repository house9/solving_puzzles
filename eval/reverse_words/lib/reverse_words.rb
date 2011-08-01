class ReverseWords

  def initialize(file_path)
    @lines = read_file(file_path).split("\n")
  end
  
  def run
    result = []
    
    @lines.each do |line|
      line.chomp!
      result << line.split(' ').reverse.join(' ') unless line == ""
    end
    
    return result
  end

  def read_file(file_path)
    return File.read(file_path)
  end
  
  private :read_file
  
end
