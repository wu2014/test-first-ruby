class Book
  # TODO: your code goes here!
  attr_reader :title

  def title=(some_title)
    no_capitalize = ['the', 'a', 'an', 'and', 'in', 'of']
    
    words = some_title.downcase.split(" ")
    title_words = [words[0].capitalize]
    i = 1

    while i < words.length 
      if !no_capitalize.include?(words[i])
        title_words << words[i].capitalize
      else
        title_words << words[i]
      end
      i += 1
    end
    @title = title_words.join(" ")
  end
end
