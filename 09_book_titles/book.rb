class Book

  def title=(title)
    words = title.capitalize!.split(" ")
    words.map! do |word|
      if ["and","in","the","of", "a", "an"].include? word
        word
      else
        word.capitalize
      end
    end
    @title = words.join(" ")
  end
  
  def title
    @title
  end

end
