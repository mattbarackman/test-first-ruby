class Array

  def sum
    if self.empty?
      0
    else
      self.reduce(:+)
    end
  end

  def square
    if self.empty?
      self
    else
      self.map {|x| x**2 }
    end
  end

  def square!
    if self.empty?
      self
    else
      self.map! {|x| x**2 }
    end
  end

end
