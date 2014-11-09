class PigClasser
  attr_reader :word
# def word (this is the SAME as line 2)
#   @word
# end
  def initialize(word)
    @word = word
  end

  def self.vowel(word)
    output = word + "" + "ay"
    #only want first instance of vowel
  end

  def consonants(word)
    output = word.sub(/\b[^aeiou]+/, "") + word.slice(/\b[^aeiou]+/) + "ay"
    p output
  end

  def punctuation(word)
  end

  def capitalize(word)
  end

  def qu_case(word)
  end

  def self.translate(word) #do not understand why i need self here
    word.split.map { |string| translate_this(string) }.join(" ")
  end

  def self.translate_this(string)
    word = string.downcase
    p word
    if word.match(/[^aeiou]/)
      vowel(word)
    elsif word.match(/[^aeiou]+/)
      p word
      consonants(word) # not working looks like its adding .
    end
  end
end
# if word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
#   word.concat("ay")
# end
