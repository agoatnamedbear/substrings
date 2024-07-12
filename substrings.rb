dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sentence = "Howdy partner, sit down! How's it going?"

# def substrings(string, dictionary)
#   arr = string.downcase.split(' ')

#   dictionary.reduce(Hash.new(0))  {|hash, word|
#     arr.each {|item|
#       hash[word] += 1 if item.include?(word)
#     }
#     hash
#   }
# end



def substring(sentence, dictionary)
  arr = sentence.downcase.split(' ')
  dictionary.each_with_object(Hash.new(0)) do |word, hash|
    arr.each {|item| hash[word] += 1 if item.include?(word) }
  end
end

p substring(sentence, dictionary)
