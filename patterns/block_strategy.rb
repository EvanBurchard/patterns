require 'ruby-debug'
#   The strategy pattern, like the template pattern is used when an algorithm needs to be varied.
#   But the strategy pattern relies on delegation of the special behavior into non-subclassed chunks of code.  

module BlockStrategy


  JAPANESE_PREPROCESSOR = lambda do |con| 
    # debugger
    # nil
    @post_processed_text = con.text.gsub(/./){|c| c + ";)"} 
  
  end

  ENGLISH_PREPROCESSOR = lambda do |con| 
    con.text.capitalize
  end


  class PrintInALanguage
    attr_reader :text
    attr_accessor :preprocessor
  
    def initialize(text, &preprocessor)
      @text = text
      @preprocessor = preprocessor
    end
  
    def do_stuff_to_text_first
      @preprocessor.call(self)
    end

    def print_it
      @post_processed_text
    end

    def print_stuff
      @post_processed_text = do_stuff_to_text_first
      print_it
    end
  
  end
end

