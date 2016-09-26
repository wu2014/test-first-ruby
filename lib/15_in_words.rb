module Inwords
  def in_words
    return "zero" if self.zero?
    number, string = large_numbers(self)
    return string + small_numbers(number)
  end

  # Converts numbers > 99
  def large_numbers(number)
    string = ""
    orders = {1_000_000_000_000 =>"trillion", 1_000_000_000 =>"billion", 
      1_000_000 =>"million", 1000 =>"thousand", 100 =>"hundred"}
    orders.each do |limit, name|
      if number > limit - 1
        quotient = number / limit
        rest = number % limit
        number = rest
        if quotient > 0
          string += "#{quotient.in_words} #{name}"
          string += " " if number > 0
        end
      end
    end
    return number, string
  end
  # Converts the numbers 1 - 99
  def small_numbers(number)
    string = ""
    ones = %W(one two three four five six seven eight nine)
    teens = %W(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    tens = %W(twenty thirty forty fifty sixty seventy eighty ninety)
    if number > 19 # 20 - 99
      #quotient, rest = number.divmod(10)
      quotient = number / 10
      rest = number % 10
      string += tens[quotient - 2]
      if rest != 0
        string += ' ' + ones[rest - 1] 
      end
    elsif number > 9 # 10 - 19
      string += teens[number - 10]
    elsif number > 0 # 1 - 9
      string += ones[number - 1]
    end
    string
  end
end

class Fixnum 
  include Inwords
end
class Bignum 
  include Inwords
end