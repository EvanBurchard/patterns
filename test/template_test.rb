require "test_helper"

# require "#{File.dirname(__FILE__)}/../patterns/template.rb"


class TemplateTest < Test::Unit::TestCase
  context "An unspecified language" do
    setup do
      @a_message = "this is in an unspecified language"
      @a = Template::PrintInALanguage.new(@a_message)
    end
    should "leave the message unchanged" do
      assert_equal  @a_message, @a.print_stuff
    end
  end
  
  context "English" do
    setup do
      @e_message = "this is in English"
      @e = Template::PrintInEnglish.new(@e_message)
    end
    should "leave capitalize the text" do
      assert_equal  @e_message.capitalize, @e.print_stuff
    end
  end 
   
  context "Japanese" do
    setup do
      @j_message = "korewanihongodayo!"
      @j = Template::PrintInJapanese.new(@j_message)      
    end
    should "have three times the text with all the emoticons" do
      assert_equal  @j_message.length*3, @j.print_stuff.length      
    end
  end  
end
