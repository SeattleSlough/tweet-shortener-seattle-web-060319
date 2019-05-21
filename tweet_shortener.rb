require 'pry' 
def dictionary
  shortened_list = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end
  
  def word_substituter(string)
    list = dictionary()
    array = string.split
    new_array = array.map do |word|
                  list.each do |key, value|
                     if word == key
                     word = value
        end
      end
    end
    binding.pry
    new_array.join(" ")
    return new_array
  end
    