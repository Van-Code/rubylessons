# Write a method to_initials that takes in a person's name string and returns a string representing their initials.

def to_initials(name)
	splits = name.split(" ");
  	initials = "";
  	splits.each { |substring| initials += substring[0]} 
  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

#Write a method abbreviate_sentence that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)

    words = sent.split(" ")
    new_sent = []
      words.each do |word|
        if word.length > 4
            new_sent << remove_vowels(word)
        else
            new_sent << word
        end
      end
    return new_sent.join(" ")
    
  end
  
  def remove_vowels(word)
    vowels = "aeiou"
    new_word = ""
    word.each_char do |char|
        if !vowels.include?(char) 
              new_word += char
      end
    end
    return new_word
  end
  puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
  puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

  # Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name.

  def is_valid_name(str)
    parts = str.split(" ")
    if parts.length < 2
      return false
    end
  
    parts.each do |part|
      if !is_capitalized(part)
        return false
      end
    end
  
    return true
  end
  
  def is_capitalized(word)
    if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
      return true
    else
      return false
    end
  end
  
  puts is_valid_name("Kush Patel")       # => true
  puts is_valid_name("Daniel")           # => false
  puts is_valid_name("Robert Downey Jr") # => true
  puts is_valid_name("ROBERT DOWNEY JR") # => false

  # Write a method combinations that takes in an array of unique elements, the method should return a 2D array representing all possible combinations of 2 elements of the array.

  def combinations(arr)
	uniques = []
   arr.each_with_index do |ele1, idx1|
     arr.each_with_index do |ele2,idx2|
       if idx2 > idx1
          uniques << [ele1,ele2]
       end
     end
   end
  return uniques
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts

# Write a method pig_latin_word that takes in a word string and translates the word into pig latin.

def pig_latin_word(word)
    vowels = "aeiou"
    suffix = "ay"
    new_word = ""
    
    if vowels.include?(word[0])
        return word + "y"+ suffix
    end
    
   word.each_char.with_index do |char,idx|
      if vowels.include?(char)
       return word[idx..-1] + word[0...idx] + "ay"
      end
   end
  end
  
  puts pig_latin_word("apple")   # => "appleyay"
  puts pig_latin_word("eat")     # => "eatyay"
  puts pig_latin_word("banana")  # => "ananabay"
  puts pig_latin_word("trash")   # => "ashtray"

  # Write a method hand_score that takes in a string representing a hand of cards and returns it's total score. You can assume the letters in the string are only A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point. The letters of the input string not necessarily uppercase.

  def hand_score(hand)
    score = 0
     points ={"A"=>4,"K" => 3, "Q"=>2,"J"=>1}
       hand.each_char do |char|
       score += points[char.upcase]
     end
     return score
 end
 
 puts hand_score("AQAJ") #=> 11
 puts hand_score("jJka") #=> 9

 # Write a method element_replace that takes in an array and a hash. The method should return a new array where elements of the original array are replaced with their corresponding values in the hash.

 def element_replace(arr, hash)
	arr.each_with_index do | ele,idx |
      if hash[ele]
        arr[idx] = hash[ele]
      end
    end
  return arr
end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bork", "cat"=>"meow", "duck"=>"quack"}
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts

# Write a method map_by_key that takes in an array of hashes and a key string. The method should returns a new array containing the values from each hash for the given key.

def map_by_key(arr, key)
	return arr.map { | hash | hash[key]}
end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts

#Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
    hash = {}
    sentence.split.each do |word|
      hash[word] = count_vowels(word)
    end
    
    sorted = hash.sort_by {|key,value|value}
    return sorted[-1][0]
    
  end
  
  def count_vowels(word)
    count = 0;
    vowels = "aeiou"
     word.each_char do |char|
          if vowels.include?(char)
            count += 1
            end
      end
    return count
  end
  print most_vowels("what a wonderful life") #=> "wonderful"


  # Write a method triple_sequence that takes in two numbers, start and length. The method should return an array representing a sequence that begins with start and is length elements long. In the sequence, every element should be 3 times the previous element. Assume that the length is at least 1.

  def triple_sequence(start, length)
    new_arr = [start]
    
  while new_arr.length < length
    new_arr << start * 3
    start+=1
  end
    return new_arr
  end
  
  print triple_sequence(2, 4) # => [2, 6, 18, 54]
  puts
  print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
  puts