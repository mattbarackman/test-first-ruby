def echo(input)
  raise "Please enter a String" unless input.class == String
  input
end

def shout(input)
  raise "Please enter a String" unless input.class == String
  input.upcase
end

def repeat(input, n = 2)
  raise "Please enter a String" unless input.class == String
  #raise "Please enter an integer" unless input.class == Fixnum
  ((input+" ") * n).strip
end

def start_of_word(word, n)
  word[0..(n-1)]
end

def first_word(word)
  word.split(" ").first
end

def titleize(word)
  word.capitalize!
  words = word.split(" ")
  words.each do |x|
    x.capitalize! unless ["the", "and", "over"].include? x 
  end
  words.join(" ")
end