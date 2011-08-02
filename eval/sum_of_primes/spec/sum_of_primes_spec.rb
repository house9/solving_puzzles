require 'spec_helper'

describe "SumOfPrimes" do
  describe "Basics" do
    it "can be instantiated" do
      o = SumOfPrimes.new
      o.should be_instance_of(SumOfPrimes)
    end

    it "should respond to run" do
      o = SumOfPrimes.new
      o.should respond_to(:run)    
    end
  end
end