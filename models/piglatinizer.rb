class PigLatinizer

  def piglatinize(word)
    # word = word.downcase
    vowels = ['a', 'e', 'i', 'o', 'u']
    result = []

    translation = ''
    qu = false

    if vowels.include? word[0].downcase
      translation = word + 'way'
      result.push(translation)
    else
      char_array = word.split('')
      count = 0
      char_array.each_with_index do |char, index|
        if vowels.include? char
          # handle word that start with 'qu'
          if char == 'u' and translation[-1] == 'q'
            qu = true
            translation = word[i][count + 1..word[i].length] + translation + 'uay'
            result.push(translation)
            next
          end
          break
        else
          # handle word with 'qu' in middle
          if char == 'q' and word[i+1] == 'u'
            qu = true
            translation = word[count..word.length] + translation + 'quay'
            result.push(translation)
            next
          else
            translation += char
          end
          count += 1
        end
      end
      # translation of consonant word without qu
      if not qu
        translation = word[count..word.length] + translation + 'ay'
        result.push(translation)
      end

    end
    result.join(' ')
  end

  def to_pig_latin(words)
    words = words.split(' ')
    result = words.map { |w| piglatinize(w)}
    result.join(" ")
  end
end
