require 'fizz_buzz'

describe FizzBuzz do
  describe "start" do
    it "should return 1" do
      FizzBuzz.new.start.should == 1
    end
  end
  
  describe "next" do
    it "should return 2 for 2" do
      FizzBuzz.new(20, 1).next.should == 2      
    end
    
    it "should return 'fizz' for 3" do
      FizzBuzz.new(20, 2).next.should == "fizz"
    end
          
    it "should return 'buzz' for 5" do
      FizzBuzz.new(20, 4).next.should == "buzz"
    end
    
    it "should return 'fizz buzz' for 15" do
      FizzBuzz.new(20, 14).next.should == "fizz buzz"
    end
    
    it "should return false when past limit" do
      FizzBuzz.new(20, 20).next.should == false
    end    
  end  
end