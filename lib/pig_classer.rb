class PigClasser
  #attr_reader :word

    def self.translate(word)
      if word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
        word.concat("ay")
      end
    end

    # def word this is the SAME as line 2
    #   @word
    # end
end
