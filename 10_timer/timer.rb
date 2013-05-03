require "time"

class Timer

  def initialize
    @start_time = Time.now
  end

  def seconds
    @elapsed = (Time.now - @start_time).to_i
  end

  def seconds=(time)
    @elapsed = time
  end

  def time_string
    hours = @elapsed / 3600   
    minutes = (@elapsed - hours * 3600) / 60
    seconds = @elapsed - hours * 3600 - minutes * 60
    padded(hours)+":"+padded(minutes)+":"+padded(seconds)
  end

  def padded(n)
    if n < 10
      "0" + n.to_s
    else
      n.to_s
    end
  end

end