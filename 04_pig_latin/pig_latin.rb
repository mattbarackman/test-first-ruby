def translate(string)
  words = string.split(" ")
  words.map! do |word| 
    translate_word(word)
  end
  words.join(" ")
end

def translate_word(word)
  length = word.length
  if vowel?(word[0])
    word + "ay"
  elsif word[0..1] == "qu"
    word[2..(length-1)] + word[0..1] + "ay"
  elsif word[1..2] == "qu"
    word[3..(length-1)] + word[0..2] + "ay"
  elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
    word[3..(length-1)] + word[0..2] + "ay"
  elsif !vowel?(word[0]) && !vowel?(word[1])
    word[2..(length-1)] + word[0..1] + "ay"
  else
    word[1..(length-1)] + word[0] + "ay"
  end
end

def vowel?(letter)
  "aeiouy".include? letter
end

puts translate("three")