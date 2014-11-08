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
    if word.match /\A[qu]{2}/
      "#{word[2..-1]}quay"
    elsif word[1..2].match(/[qu]/)
      "#{word[3..-1]}#{word[0..2]}ay"
    elsif word.match(/\A[^aeiou]{3}/)
      "#{word[3..-1]}#{word[0..2]}ay"
    elsif word.match(/\A[^aeiou]{2}/)
      "#{word[2..-1]}#{word[0..1]}ay"
    elsif word.match(/\A[^aeiou]{1}/)
      "#{word[1..-1]}#{word[0]}ay"
    else
      word << "ay"
    end
    # if word.match(/[A-Z]/)
    #   word = word.downcase.capitalize
    # end
  end
end
