class Fixnum

  def in_words

    n = self

    @s = ""
    
    if n >= 1_000_000_000_000
      trillions = n / 1_000_000_000_000 # trillions
      @s << "#{process(trillions)} trillion "
      if n % 1_000_000_000_000 == 0
        return @s.strip
      else
        n = n % 1_000_000_000_000 
      end
    end

    if n >= 1_000_000_000
      billions = n / 1_000_000_000 # billions
      @s << "#{process(billions)} billion "
      if n % 1_000_000_000 == 0
        return @s.strip
      else
        n = n % 1_000_000_000
      end
    end

    if n >= 1_000_000
      millions = n / 1_000_000 # millions
      @s << "#{process(millions)} million "
      if n % 1_000_000 == 0
        return @s.strip
      else
        n = n % 1_000_000
      end
    end

    if n >= 1_000
      thousands = n / 1_000 # thousands
      @s << "#{process(thousands)} thousand "
      if n % 1_000 == 0
        return @s.strip
      else
        n = n % 1_000
      end
    end

    @s << process(n)

    @s.strip

  end

  def process_hundreds(n)
    hundreds = n / 100 # hundreds
    
    if n % 100 == 0
      "#{single_digit(hundreds)} hundred "
    else
      "#{single_digit(hundreds)} hundred #{process_under_hundred(n % 100)}"
    end
  end

  def process_under_hundred(n)
    
      if n < 10
        single_digit(n)

      elsif n > 10 && n < 20
        teens(n)

      elsif n % 10 == 0
        powers_of_ten(n)

      else
        "#{powers_of_ten(n - (n % 10))} #{single_digit(n % 10)}"
      end
    end
  end

  def single_digit(n)
    case n
    when 0 
      "zero"
    when 1 
      "one"
    when 2 
      "two"
    when 3 
      "three"
    when 4 
      "four"
    when 5 
      "five"
    when 6 
      "six"
    when 7 
      "seven"
    when 8 
      "eight"
    when 9
      "nine"
    end

  end

  def teens(n)
    case n
    when 11 
      "eleven"
    when 12 
      "twelve"
    when 13 
      "thirteen"
    when 14 
      "fourteen"
    when 15 
      "fifteen"
    when 16 
      "sixteen"
    when 17 
      "seventeen"
    when 18 
      "eighteen"
    when 19 
      "nineteen"
    end

  end

  def powers_of_ten(n)
    case n
    when 10 
      "ten"
    when 20 
      "twenty"
    when 30 
      "thirty"
    when 40 
      "forty"
    when 50 
      "fifty"
    when 60 
      "sixty"
    when 70 
      "seventy"
    when 80 
      "eighty"
    when 90 
      "ninety"
    end
  end


  def process(n)

    if n >= 100
      process_hundreds(n)
    else
      process_under_hundred(n)

  end

end
