class RPNCalculator
  attr_accessor :calculator

  def initialize
	@calculator = []
  end

  def push (num)
	@calculator << num
  end

  def value
	@calculator.last
  end

  def plus
	if @calculator == []
	  raise 'calculator is empty'
	end
	  num1 = @calculator.pop
	  num2 = @calculator.pop
	  new_num = num1 + num2
	  @calculator << new_num	
  end

  def minus	
	if @calculator == []
	  raise 'calculator is empty'
	end
	num1 = @calculator.pop
	num2 = @calculator.pop
	new_num = num2 - num1
	@calculator << new_num	
  end

  def divide
	if @calculator == []
	  raise 'calculator is empty'
	end
	num1 = @calculator.pop
	num2 = @calculator.pop
	new_num = num2.to_f / num1
	@calculator << new_num	
  end

  def times
	if @calculator == []
	  raise 'calculator is empty'
	end
	num1 = @calculator.pop
	num2 = @calculator.pop
	new_num = num1 * num2
	@calculator << new_num
  end

  def tokens (string)
	string.split(' ').each do |z|
	  if z == "*"
		@calculator<<:*
	  elsif z == "-"
		@calculator<<:-
	  elsif z == "+"
		@calculator<<:+
	  elsif z == "/"
		@calculator<<:/
	  else
		@calculator<<z.to_i
	  end
	end
	  @calculator
  end				

  def evaluate (string)
	string.split(' ').each do |z|
	  if z == "*"
		self.times
	  elsif z == "-"
		self.minus
	  elsif z == "+"
		self.plus
	  elsif z == "/"
		self.divide
	  else
		@calculator << z.to_i
	  end			
	end
	@calculator.last
  end

end
