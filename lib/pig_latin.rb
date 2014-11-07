class PigLatin

  def initialize(word)
    @word = word
  end

  def word
    @word
  end

  def translate
    word.split.map {|word| translate_outer(word)}.join(" ")
  end


  def translate_outer(word)
       if word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
          word << "ay"
       elsif  word.start_with?("ch")
          "#{word[2..-1]}#{word[0..1]}ay"
       elsif word =~ /\A(?i:(?![aeiou])[a-z]){3}/
          "#{word[3..-1]}#{word[0..2]}ay"
       elseif word =~ /[qu]{2}/
          "#{word[2..-1]}#{word[0..1]}ay"
         else
          "#{word[1..-1]}#{word[0]}ay"
       end

  end


end
