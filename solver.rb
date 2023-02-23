class Solver
  attr_accessor :number, :str
  def factorial
    num = @number
    raise ArgumentError, "Number must be non-negative" if num < 0
    
    result = 1
    (1..num).each do |i|
      result *= i
    end
    
    result
  end

  def reverse
    @str.reverse
  end
  

  def fizzbuzz
     num = @number
    if num % 3 == 0 && num % 5 == 0
      "fizzbuzz"
    elsif num % 3 == 0
      "fizz"
    elsif num % 5 == 0
      "buzz"
    else
      num.to_s
    end
  end
end
