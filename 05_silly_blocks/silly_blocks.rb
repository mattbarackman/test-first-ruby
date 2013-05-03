def reverser
  words = yield.split(" ")
  words.each do |word|
    word.reverse!
  end
  words.join(" ")
end

def adder(x = 1)
  yield + x
end

def repeater(x = 1)
  x.times do
    yield
  end
end