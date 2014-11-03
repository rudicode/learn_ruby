def translate sentence
  words = sentence.split(' ')
  words.map! do |word|
    word = translate_word(word)
  end

words.join(' ')

end

def translate_word word
  vowels = %w{ a e i o u }
  if vowels.include?(word[0])
    return word += "ay"
  end
  
  result = word.split(//)
  index  = find_first_vowel(result)
  result.rotate!(index)
    #binding.pry
  word = result.join
  return word += "ay"
  
end

def find_first_vowel input
  vowels = %w{ a e i o u }
  # index = nil
  count = 0

  input.each_with_index do |char,index|
    if vowels.include?(char)
      count = index
      break
    end
    
    if char == 'q' && char.next == 'u'
      count = index + 1
      break
    end
  end

  count
end