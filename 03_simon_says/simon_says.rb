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

def start_of_word
  
end