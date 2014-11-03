def echo word
  word
end

def shout word
  word.upcase
end

def repeat word, num = 2
  result = word
  (1...num).each do |index|
    result += (" " + word)
  end
  result
end

def start_of_word word, number_of_letters
  word[0..(number_of_letters-1)]
end

def first_word sentence
  word = sentence.split.first
end

def titleize sentence
  skip_words = ["and","over","the"]
  words = sentence.split
  
  words.map! do |word|
    skip_words.include?(word) ? word : word.capitalize!
  end

  words[0].capitalize!
  words.join(' ')  
end