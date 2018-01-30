class PigLatinizer
  def to_pig_latin(sentence)
    array = sentence.split(" ")
    array.map{|word| piglatinize(word)}.join(" ")
  end
  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
      if vowels.include?(word[0].downcase)
        word = word + "way"
      elsif  vowels.include?(word[1])
        word = word.slice(1..-1) + word[0] + "ay"
      elsif vowels.include?(word[2])
        word = word.slice(2..-1) + word[(0..1)] + "ay"
      elsif vowels.include?(word[3])
        word = word.slice(3..-1) + word[(0..2)] + "ay"
      end
  end
end
# new_sentence = array_of_changed_words.join(" ")
