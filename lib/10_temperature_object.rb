class Temperature
  # TODO: your code goes here!
  def initialize(temp={})
  	@fahrenheit = temp[:f]
  	@celsius = temp[:c] 
  end
  
  def in_fahrenheit
  	if @celsius
      @celsius * 9.0/5.0 + 32.0
    else
      @fahrenheit
    end
  end	

  def in_celsius
  	if @fahrenheit
      (@fahrenheit - 32.0) * 5.0/9.0
    else
      @celsius
    end
  end 

  def self.from_celsius(num)
    Temperature.new(:c => num)
  end

  def self.from_fahrenheit(num)
    Temperature.new(:f => num)
  end

  def self.ftoc(f)
    (f - 32.0) * 5.0/9.0
  end

  def self.ctof(c)
    (c * 9.0/5.0) + 32.0
  end

end
 
# Celcius is a subclass of Temperature, take a simple value instead of key/val pair
class Celsius < Temperature
  def initialize(c)
    super :c => c     # call ancestor class, passing arg in a format it knows how to deal with
  end
end


class Fahrenheit < Temperature
  def initialize(f)
    super :f => f
  end
end