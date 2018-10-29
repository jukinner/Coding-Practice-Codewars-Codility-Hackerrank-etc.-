# Check out the resources on the page's right side to learn more about arrays. The video tutorial is by Gayle Laakmann McDowell, author of the best-selling interview book Cracking the Coding Interview.

# A left rotation operation on an array shifts each of the array's elements  unit to the left. For example, if  left rotations are performed on array , then the array would become .

# Given an array  of  integers and a number, , perform  left rotations on the array. Return the updated array to be printed as a single line of space-separated integers.

# Function Description

# Complete the function rotLeft in the editor below. It should return the resulting array of integers.

# rotLeft has the following parameter(s):

# An array of integers .
# An integer , the number of rotations.
# Input Format

# The first line contains two space-separated integers  and , the size of  and the number of left rotations you must perform. 
# The second line contains  space-separated integers .

# Constraints

# Output Format

# Print a single line of  space-separated integers denoting the final state of the array after performing  left rotations.

# Sample Input

# 5 4
# 1 2 3 4 5
# Sample Output

# 5 1 2 3 4
# Explanation

# When we perform  left rotations, the array undergoes the following sequence of changes:


#!/bin/ruby

require 'json'
require 'stringio'

# Complete the rotLeft function below.
def rotLeft(a, d)
	a.times do 
		d = d.push(d.shift)
	end
	p d
end

rotLeft(4, [1, 2, 3, 4, 5])

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# nd = gets.rstrip.split

# n = nd[0].to_i

# d = nd[1].to_i

# a = gets.rstrip.split(' ').map(&:to_i)

# result = rotLeft a, d

# fptr.write result.join " "
# fptr.write "\n"

# fptr.close()
