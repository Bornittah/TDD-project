class Solver
  attr_accessor :number, :str

  def factorial
    num = @number
    raise ArgumentError, 'Number must be non-negative' if num.negative?

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
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
