def translate(string)
  words = string.split(' ')
  vowels = ['a', 'e', 'i', 'o', 'u']
  result = []
  words.each do |word|
  	if vowels.include? word[0]
  	  word = word + 'ay'
  	  result.push(word)
  	else
  	  if !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2]) || word[1..2] == "qu"
        word = word[3..-1] + word[0..2] + 'ay'
      elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && word[1..2] != "qu" || word[0..1] == "qu"
        word = word[2..-1] + word[0..1] + 'ay'  
  	  elsif !vowels.include?(word[0]) && vowels.include?(word[1]) && word[0..1] != "qu"
        word = word[1..-1] + word[0] + 'ay'
      end 
      result.push(word) 
    end    
      
  end
  result = result.join(' ')
end      
     
        	  	  	  	  	  	  	  
  	  	

  
