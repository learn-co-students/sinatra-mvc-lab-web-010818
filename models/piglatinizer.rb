class PigLatinizer

  def split_phrase(phrase) #takes in user_input attribute
   phrase.split(" ")
   #returns array of words, all downcased
  end

   def to_pig_latin(phrase)
     words_arr = split_phrase(phrase)

     pig_words_arr = words_arr.map do |word|
       piglatinize(word)
     end
     pig_words_arr.join(" ")
     #=>"String of piglatinzed words"
   end

   def find_first_vowel(word)
     word.split("").find do |letter|
       ["A","E","I","O","U","a","e","i","o","u"].include?(letter)
     end

   end

   def piglatinize(word)
     index = word.index(find_first_vowel(word))
     head = word[index...word.length]
     # binding.pry

     if index == 0
       tail = 'w'
     else
       tail = word[0...index]
     end
     head + tail + "ay"
     # binding.pry
   end




end
