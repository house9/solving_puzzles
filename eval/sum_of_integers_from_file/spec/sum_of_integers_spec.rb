require 'rubygems'
require 'rspec'
require_relative '../lib/sum_of_integers'

describe "SumOfIntegers" do
  
  it "can be instantiated" do
    o = SumOfIntegers.new([])
    o.should be_instance_of(SumOfIntegers)
  end
  
  it "should have values" do
    o = SumOfIntegers.new(["0", "1"])
    o.values.should == ["0", "1"]
  end

  describe "total" do
    it "should total 0 when empty array" do
      o = SumOfIntegers.new([])
      o.sum.should == 0
    end
  
    it "should total single digit numbers" do
      o = SumOfIntegers.new(["0", "1", "9"])
      o.sum.should == 10
    end
  
    it "should total 1 given a single value of 10" do
      o = SumOfIntegers.new(["10"])
      o.sum.should == 1
    end
    
  end

end