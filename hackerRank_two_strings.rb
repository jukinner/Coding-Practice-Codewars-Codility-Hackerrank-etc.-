# Given two strings, determine if they share a common substring. A substring may be as small as one character.

# For example, the words "a", "and", "art" share the common substring . The words "be" and "cat" do not share a substring.

# Function Description

# Complete the function twoStrings in the editor below. It should return a string, either YES or NO based on whether the strings share a common substring.

# twoStrings has the following parameter(s):

# s1, s2: two strings to analyze .
# Input Format

# The first line contains a single integer , the number of test cases.

# The following  pairs of lines are as follows:

# The first line contains string .
# The second line contains string .
# Constraints

#  and  consist of characters in the range ascii[a-z].
# Output Format

# For each pair of strings, return YES or NO.

# Sample Input

# 2
# hello
# world
# hi
# world
# Sample Output

# YES
# NO
# Explanation

# We have  pairs to check:

# YES The substrings  and  are common to both strings.
# NO  and  share no common substrings.


#!/bin/ruby

require 'json'
require 'stringio'

# Complete the twoStrings function below.
def twoStrings(s1, s2)
  s1.split("").each { |x| return "YES"if s2.include?(x) }
return "NO"
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# q = gets.to_i

# q.times do |q_itr|
#     s1 = gets.to_s.rstrip

#     s2 = gets.to_s.rstrip

#     result = twoStrings s1, s2

#     fptr.write result
#     fptr.write "\n"
# end

# fptr.close()




