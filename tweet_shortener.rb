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
    string.split.map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
    end.join(" ")
  end
  
  def bulk_tweet_shortener(tweets)
    tweets.each do |element|
      puts word_substituter(element)
    end
  end
  
  def selective_tweet_shortener(tweet)
      if tweet.length > 140
        return word_substituter(tweet)
      else 
        return element
    end
  end
    