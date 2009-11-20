require "test_helper"
# require "#{File.dirname(__FILE__)}/../patterns/block_strategy.rb"


class BlockStrategyTest < Test::Unit::TestCase
  context "An English preprocessor" do
    setup do
      @e_message = "this is in English"
      @e = BlockStrategy::PrintInALanguage.new(@e_message, &BlockStrategy::ENGLISH_PREPROCESSOR)
    end
    should "capitalize the text" do
      assert_equal  @e_message.capitalize, @e.print_stuff
    end    
  end 
   
  context "A Japanese preprocessor" do
    setup do
      @j_message = "korewanihongodayo"
      @j = BlockStrategy::PrintInALanguage.new(@j_message, &BlockStrategy::JAPANESE_PREPROCESSOR)
    end
    should "increase the length of the text three-fold" do
      assert_equal  @j_message.size*3, @j.print_stuff.size
    end    
  end
end