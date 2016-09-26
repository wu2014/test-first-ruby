def reverser 
  words = yield.split(' ')
  res = []
  words.each do |word|
    word.reverse!
    res.push(word)
  end
  res.join(' ')
end

def adder (n=1)
  n + yield
end

def repeater (n=1)
  n.times {yield}
end


def reverser2 (&block)
  words = block.call.split(' ')
  res = []
  words.each do |word|
    word.reverse!
    res.push(word)
  end
  res.join(' ')
end

def adder2 (n=1, &block)
  n + block.call
end

def repeater2 (n=1, &block)
  n.times { block.call }
end