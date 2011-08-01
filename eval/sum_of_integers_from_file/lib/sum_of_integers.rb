class SumOfIntegers
  
  def initialize(values)
    @values = values
  end
  
  attr_accessor :values
  
  def sum
    total = 0

    @values.each do |value|
      value.each_char do |n|
        total = total + n.to_i
      end
    end

    return total
  end
  
end
