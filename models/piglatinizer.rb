class PigLatinizer

  def piglatinize(word)
    if !consonant?(word[0])
      word + "way"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word[3..-1] + word[0..2] + "ay"
    elsif consonant?(word[0]) && consonant?(word[1])
      word[2..-1] + word[0..1] + "ay"
    else
      word[1..-1] + word[0] + "ay"
    end
  end

  def consonant?(char)
  vowels = "aeiouAEIOU"
    if vowels.include?(char)
      false
    else
      true
    end
  end

  def to_pig_latin(sentence)
    result = sentence.split.map{|word| piglatinize(word)}
    result.join(" ")
  end

end
