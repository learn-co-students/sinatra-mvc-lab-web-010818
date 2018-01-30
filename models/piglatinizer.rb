class PigLatinizer

  @@vowels = ['a','e','i','o','u','A','E','I','O','U']

  def piglatinize(word)
    split_word = word.split("")
    if (split_word[0...3] & @@vowels).size == 0
      word[3..-1] + word[0..2] + "ay"
    elsif (split_word[0...2] & @@vowels).size == 0
      word[2..-1] + word[0..1] + "ay"
    elsif (split_word[0...1] & @@vowels).size == 0
      word[1..-1] + word[0] + "ay"
    else
      word + "way"
    end
  end

  def to_pig_latin(sentence)
    split_sentence = sentence.split(" ")
    split_sentence.map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
