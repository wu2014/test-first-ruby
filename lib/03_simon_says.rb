def echo(str)
  str
end	

def shout(str)
  str.upcase
end	

def repeat(str,t=2)
  ((str + ' ')*t).strip
end	

def start_of_word(str,t)
  res = ''
  i = 0
  while i < t
  	res += str[i]
  	i += 1
  end
  res	
end	

def first_word(str)
  words = str.split(' ')
  words[0]	
end	

def titleize(str)
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  words = str.split(" ")
  i = 1
  res = [words[0].capitalize]
  while i < words.length 
    if words_no_cap.include?(words[i])			 
      res = res.push(words[i])
    else
     res = res.push(words[i].capitalize)
    end
    i = i + 1
  end
  phrase = res.join(' ')
end	