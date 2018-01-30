class PigLatinizer






 #  def lantinizer
 #
 # final= ""
 # arr = text.split("")
 # first = arr.shift
 #
 #
 # if (first == "a" ||first == "e" ||first == "i" ||first == "o" || first == "u")
 #   final = arr.unshift(first).join + ("way")
 #
 # elsif (arr[0] != "a" &&arr[0] != "e" &&arr[0] != "i" &&arr[0] != "o" &&arr[0] != "u" )
 #
 #   second = arr.shift
 # final =  arr.join+first+second+("ay")
 # else
 #   final =  arr.join+first+("ay")
 # end
 #
 # final
 #  end





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

      if index == 0
        tail = 'w'
      else
        tail = word[0...index]
      end
      head + tail + "ay"
    end
  end
