#   The template pattern is used when an algorithm needs to be varied.
#   The general functionality is abstracted into a base class and 
#   implemented as needed by the subclasses

module Template
  class PrintInALanguage
    def initialize(text)
      @text = text
    end
  
    def do_stuff_to_text_first
      @text
    end

    def print_it
      @post_processed_text
    end

    def print_stuff
      @post_processed_text = do_stuff_to_text_first
      print_it
    end
  
  end

  class PrintInEnglish < PrintInALanguage
  
    def do_stuff_to_text_first
      @text.capitalize
    end
  
  end

  class PrintInJapanese < PrintInALanguage

    #   no capitalization possible in this language, but idiomatic Japanese needs emoticons.
    #   a "translate" method would be abstracted to the base class, but emotification is a characteristic only found to this
    #   degree in Japanese text.
  
    def do_stuff_to_text_first
      @post_processed_text = emotify 
    end
  
    def emotify
      @text.gsub(/./) {|c| c + ";)"}
    end
  end
end