require "test_helper"
# require "#{File.dirname(__FILE__)}/../patterns/strategy.rb"

class StrategyTest < Test::Unit::TestCase
  context "An English preprocessor" do
    setup do
      @e_message = "this is in English"
      @e = Strategy::PrintInALanguage.new(@e_message, Strategy::EnglishPreprocessor.new)
    end
    should "capitalize the text" do
      assert_equal  @e_message.capitalize, @e.print_stuff
    end    
  end 
   
  context "A Japanese preprocessor" do
    setup do
      @j_message = "korewanihongodayo"
      @j = Strategy::PrintInALanguage.new(@j_message, Strategy::JapanesePreprocessor.new)
    end
    should "increase the length of the text three-fold" do
      assert_equal  @j_message.size*3, @j.print_stuff.size
    end    
  end
end
