class Array
  def sum
	if self.length == 0
	  return 0
	else
	  sum = 0
      self.each {|e| sum += e}
      return sum
	end 
  end

  def square
	if self.length == 0
	  return self
	else
	  return self.map {|n| n**2}
	end
  end

  def square!
	if self.length == 0
	  return self
	else
	  return self.map! {|n| n**2}
	end
  end

end