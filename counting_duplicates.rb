# Count the number of Duplicates
# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

# Example
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (bandB)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice

def duplicate_count(text)
	test_data = text.split("").map { |y| y.upcase }
	counter, unique = 0, test_data.uniq
	unique.each { |x| counter += 1 if test_data.count(x) > 1 }
	return counter
end

# best practice
def duplicate_count(text)
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end