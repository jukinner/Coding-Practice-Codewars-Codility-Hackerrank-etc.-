# Given a  2D Array, :

# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 0 0 0 0
# 0 0 0 0 0 0
# 0 0 0 0 0 0
# We define an hourglass in  to be a subset of values with indices falling in this pattern in 's graphical representation:

# a b c
#   d
# e f g
# There are  hourglasses in , and an hourglass sum is the sum of an hourglass' values. Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum.

# For example, given the 2D array:

# -9 -9 -9  1 1 1 
#  0 -9  0  4 3 2
# -9 -9 -9  1 2 3
#  0  0  8  6 6 0
#  0  0  0 -2 0 0
#  0  0  1  2 4 0
# We calculate the following  hourglass values:

# -63, -34, -9, 12, 
# -10, 0, 28, 23, 
# -27, -11, -2, 10, 
# 9, 17, 25, 18
# Our highest hourglass value is  from the hourglass:

# 0 4 3
#   1
# 8 6 6
# Note: If you have already solved the Java domain's Java 2D Array challenge, you may wish to skip this challenge.

# Function Description

# Complete the function hourglassSum in the editor below. It should return an integer, the maximum hourglass sum in the array.

# hourglassSum has the following parameter(s):

# arr: an array of integers
# Input Format

# Each of the  lines of inputs  contains  space-separated integers .

# Constraints

# Output Format

# Print the largest (maximum) hourglass sum found in .

# Sample Input

# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 2 4 4 0
# 0 0 0 2 0 0
# 0 0 1 2 4 0
# Sample Output

# 19
# Explanation

#  contains the following hourglasses:

# image

# The hourglass with the maximum sum () is:

# 2 4 4
#   2
# 1 2 4

#!/bin/ruby

require 'json'
require 'stringio'

# Complete the hourglassSum function below.
def hourglassSum(arr)
  top_array_index_start = 0
  mid_array_index_start = 1
  bottom_array_index_start = 0
  temp_bucket, answers = [], []
  current_top_arr = 0
  current_mid_arr = 1
  current_bottom_arr = 2
  4.times do
	  4.times do
	  	3.times do
	  		temp_bucket << arr[current_top_arr][top_array_index_start]
	  		temp_bucket << arr[current_bottom_arr][bottom_array_index_start]
	  		top_array_index_start += 1
	  		bottom_array_index_start += 1
	  	end
	  	temp_bucket << arr[current_mid_arr][mid_array_index_start]
	  	mid_array_index_start += 1
	  	answers << temp_bucket.inject(&:+)
	  	temp_bucket = []
	  	top_array_index_start -= 2
	  	bottom_array_index_start -= 2
	  end
  	top_array_index_start = 0
  	mid_array_index_start = 1
  	bottom_array_index_start = 0
		current_top_arr += 1
	  current_mid_arr += 1
	  current_bottom_arr += 1
	end
  p answers.max
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# arr = Array.new(6)

# 6.times do |i|
#     arr[i] = gets.rstrip.split(' ').map(&:to_i)
# end

# result = hourglassSum arr

# fptr.write result
# fptr.write "\n"

# fptr.close()

hourglassSum([[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]])










