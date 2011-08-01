require 'spec_helper'

describe "ReverseWords" do
  describe "Basics" do
    before(:each) do
      @file_path = "stub_input_file"
      File.stub(:read).with(@file_path).and_return("STUB")      
    end
    
    it "can be instantiated" do
      o = ReverseWords.new(@file_path)
      o.should be_instance_of(ReverseWords)
    end

    it "should respond to run" do
      o = ReverseWords.new(@file_path)
      o.should respond_to(:run)    
    end
  end
  
  describe "Reverse" do
    it "should have the same result for one word lines" do
      File.stub(:read).and_return("WORD")      
      o = ReverseWords.new(nil)      
      o.run.should == ["WORD"]
    end
    
    it "should reverse two words" do
      File.stub(:read).and_return("FIRST SECOND")      
      o = ReverseWords.new(nil)      
      o.run.should == ["SECOND FIRST"]
    end
    
    it "should reverse three words" do
      File.stub(:read).and_return("FIRST SECOND THIRD")      
      o = ReverseWords.new(nil)      
      o.run.should == ["THIRD SECOND FIRST"]      
    end
    
    it "should maintain line order" do
      File.stub(:read).and_return("FIRST_LINE\nSECOND_LINE\nTHIRD_LINE")      
      o = ReverseWords.new(nil)      
      o.run.should == ["FIRST_LINE", "SECOND_LINE", "THIRD_LINE"]      
    end    
    
    it "reverse each line" do
      File.stub(:read).and_return("BEGIN_L1\nBEGIN_L2 END_L2\nBEGIN_L3 MIDDLE END_L3")      
      o = ReverseWords.new(nil)      
      o.run.should == ["BEGIN_L1", "END_L2 BEGIN_L2", "END_L3 MIDDLE BEGIN_L3"]      
    end    
    
    it "should not include blank lines" do
      File.stub(:read).and_return("LINE1\n\nLINE3\n")      
      o = ReverseWords.new(nil)      
      o.run.should == ["LINE1", "LINE3"]
    end
  end
end