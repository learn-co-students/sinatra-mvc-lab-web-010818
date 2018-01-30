class PigLatinizer

  def to_pig_latin(str)
    result = []
    vowels = 'aeiou'

    words = str.split(' ')

    words.each do |word|
      result << piglatinize(word)
    end
    result.join(' ')
  end

  def piglatinize(word)

    ending = ''
    vowels = 'aeiou'
    if vowels.include?(word[0].downcase)
      word + 'way'
    else
      until vowels.include?(word[0])
        ending << word.slice!(0)
      end
      word + ending + 'ay'
    end
  end
end
