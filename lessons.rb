# Write a method average_of_three(num1, num2, num3) that returns the average of three numbers
def average_of_three(num1, num2, num3)
	return (num1 + num2 + num3 ) / 3.0
end

puts average_of_three(3, 7, 8)   # => 6.0
puts average_of_three(2, 5, 17)  # => 8.0
puts average_of_three(2, 8, 1)   # => 3.666666

# Write a method count_e(word) that takes in a string word and returns the number of e's in the word

def count_e(word)
    i = 0
   count = 0
     while i <= word.length
           char =  word[i]
       if char === "e"
         count += 1
       end
           i += 1
     end
     return count
   
 end
 
 puts count_e("movie") # => 1
 puts count_e("excellent") # => 3

 #Write a method count_a(word) that takes in a string word and returns the number of a's in the word. The method should count both lowercase (a) and uppercase (A)

 def count_a(word)
	count = 0
    i = 0
  while i <= word.length
    char = word[i]
    if char == "a" || char == "A"
      count += 1
    end
    i += 1
  end
  return count
end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3

# Write a method sum_nums(max) that takes in a number max and returns the sum of all numbers from 1 up to and including max.

def sum_nums(max)
    i = 0
    sum = 0
      while i <= max
        sum += i
        i += 1
      end
    return sum
    
  end
  
  puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
  puts sum_nums(5) # => 15

# Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order.
def reverse(word)
	i = 0
  	reversed = ""
  	while i < word.length
      char = word[i]
      reversed = char + reversed
      i += 1
    end
  return reversed
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"

# Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome, false otherwise. A palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome(word)
	reversed = ""
   i = 0 
  while i < word.length
    char = word[i]
    reversed = char + reversed
    i+=1
  end
  
  if reversed == word
 	 return true
  else
    return false
  end
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false

# Write a method number_check(num) that takes in a number and returns a string. The method should return the string 'positive' if the num is positive, 'negative' if the num is negative, and 'zero' if the num is zero.

def number_check(num)
	if num > 0
      return "positive"
    elsif num < 0
      return "negative"
    else
    	return "zero"
    end
end

puts number_check(5)    # => "positive"
puts number_check(-2)   # => "negative"
puts number_check(0)    # => "zero"

# Write a method element_times_index(nums) that takes in an array of numbers and returns a new array containing every number of the original array multiplied with its index.

def element_times_index(numbers)
	multiples = []
 	 i = 0
  
  while i < numbers.length
    multiples << numbers[i] * i
    
    i += 1
  end
  return multiples
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]

# Write a method factors_of(num) that takes in a num and returns an array of all positive numbers less than or equal to num that can divide num.

def factors_of(num)
    positives = []
    i =  1
while i <= num
  if num % i == 0
    positives << i
  end
    i += 1
end
  return positives
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]

# Write a method select_long_words(words) that takes in an array of words and returns a new array containing all of the words of the original array that are longer than 4 characters.

def select_long_words(words)
	long_words = []
  i = 0
  while i < words.length
    is_long = words[i].length > 4
    if is_long
    	long_words << words[i]
    end
    i += 1
  end
  return long_words
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]

# Write a method fizz_buzz(max) that takes in a number max and returns an array containing all numbers greater than 0 and less than max that are divisible by either 4 or 6, but not both.

def fizz_buzz(max)
    nums = []
  
    i = 0
    while (i < max)
      if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
        nums << i
      end
  
      i += 1
    end
  
    return nums
  end
  
  print fizz_buzz(20) # => [4, 6, 8, 16, 18]
  puts
  print fizz_buzz(15) # => [4, 6, 8]