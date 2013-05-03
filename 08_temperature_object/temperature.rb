class Temperature
  
  def initialize(hash)
    @ftemp, @ctemp = hash[:f], hash[:c] 
    @ftemp = (@ctemp.to_f * 9 / 5) + 32 unless @ctemp.nil?
    @ctemp = (@ftemp - 32) * 5 / 9 unless @ftemp.nil? 
  end

  def in_fahrenheit
    @ftemp
  end

  def in_celsius
    @ctemp
  end

  # Factory Methods
  
  def self.from_celsius(temp)
    self.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    self.new(:f => temp)
  end
end

class Celsius < Temperature

  def initialize(temp)
    @ctemp = temp
    @ftemp = (@ctemp.to_f * 9 / 5) + 32 unless @ctemp.nil? 
  end

end

class Fahrenheit < Temperature
  
  def initialize(temp)
    @ftemp = temp
    @ctemp = (@ftemp - 32) * 5 / 9 unless @ftemp.nil?
  end

end
