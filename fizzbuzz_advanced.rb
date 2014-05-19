class Fizzbuzz

  def fizzbuzz(number)
    if number % 15 == 0
      puts "FizzBuzz"
    elsif number % 5 == 0
      puts "Buzz"
    elsif number % 3 == 0
      puts "Fizz"
    else
      puts number
    end
  end

  def custom(method_name, multiple, word)
    self.class.send(:define_method, method_name) do |argument|
      if argument % multiple == 0
        puts "#{word}"
      else
        puts argument
      end
    end
  end
end

fizzbuzz = Fizzbuzz.new
fizzbuzz.custom("special", 7, "Sivv")
fizzbuzz.special(105)

fizzbuzz2 = Fizzbuzz.new
fizzbuzz2.custom("awesome", 13, "Grr")
fizzbuzz2.awesome(169)
fizzbuzz2.awesome(113)
