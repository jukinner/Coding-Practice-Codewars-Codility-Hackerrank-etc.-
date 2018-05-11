# Longest Palindrome
# Find the length of the longest substring in the given string s that is the same in reverse.

# As an example, if the input was “I like racecars that go fast”, the substring (racecar) length would be 7.

# If the length of the input string is 0, return value must be 0.

def longest_palindrome s
  answer = []
  str = s.split("")
  b = 0
  e = 1
  if str.length == 0
    answer << 0
    p answer
  elsif s.downcase == s.downcase.reverse
    answer << (s.length)
    p answer


  else 
    answer << 1
    p answer

    
end

s.length.times do 
  


word.downcase == word.downcase.reverse
def palindrome? word
  if word.upcase == word.upcase.reverse
end

# JORDAN'S Answer

def palindrome? word
  if word.downcase == word.downcase.reverse
end

word = (str[[str.length - r]).join