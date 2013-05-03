require "time"

def measure (x = 1)
  start_time = Time.now
  x.times do 
    yield
  end
  (Time.now - start_time) / x
end