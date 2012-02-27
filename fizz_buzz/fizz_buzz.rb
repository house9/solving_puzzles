class FizzBuzz
  def initialize(limit = 100, seed = 1)
    @limit = limit
    @index = seed
  end
  
  def start
    @index
  end
  
  def next
    @index = @index + 1
    return false if @index > @limit
    
    result = []
    result << "fizz" if (@index % 3 == 0)    
    result << "buzz" if (@index % 5 == 0)
    return result.join(' ') if result.any?
    
    # else integer
    return @index
  end
end