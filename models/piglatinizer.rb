class PigLatinizer

  def piglatinize(word)
      original = word
      vowels = %w{a e i o u A E I O U}
      word.gsub(/(\A|\s)\w+/) do |str|
          while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
              str += str[0]
              str = str[1..-1]
          end
          # str  = ' ' + str + 'ay'
          if vowels.include?(original[0])
            str = str + 'way'
          else
            str = str + 'ay'
          end
        end
    end
  #   original = string
  #   vowels = %w{a e i o u A E I O U}
  #   string.gsub(/(\A|\s)\w+/) do |str|
  #           str.strip!
  #       while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
  #           str += str[0]
  #           str = str[1..-1]
  #       end
  #       # str  = ' ' + str + 'ay'
  #       if vowels.include?(original[0])
  #         str  = ' ' + str + 'way'
  #       else
  #         str  = ' ' + str + 'ay'
  #       end
  #   end.strip
  # end

  def to_pig_latin(string)
    split_string = string.split(" ")
    split_string.map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
