# In Star Labs we use password system to unlock the lab doors and only Team Flash is given the password for these labs. Password system comprises of n x n keypad (n>0).

# One day Zoom saw Cisco using the password. He figured out that the password is symmetric about the centre point (centre point for n*n keypad will be point with co-ordinates (n/2, n/2)). Now he has to try all possible symmetric combinations to unlock the door. Since he has not enough time he asks you to tell if given password is symmetric or not.

# You will be given a m x n binary grid containing elements as 0 if that key is not used and 1 if that key is used. You need to tell whether the given binary grid is symmetric according to the centre point. The grid might not be square.

# Your Task
# Write a function helpZoom() that takes an array of integers containing 0 and 1 as input and returns “Yes” or “No” depending on whether the given password is symmetric or not.

# Example
# helpZoom({1,1,0,0,0,0,0,1,1}) => "Yes"
# Since the given password is symmetric along centre point, so the answer is Yes. For ease of understanding, the above array can be represented as follows:

# 1 1 0

# 0 0 0

# 0 1 1

# helpZoom({1,1,0,0,1,0,0,1}) => "No"
# Notice that the given array cannot be represented as a n x n matrix, so it's invalid.

# helpZoom({1,0,1,1,0,0,0,0,0}) => "No"
# Since the given password isn't symmetric along centre point, so the answer is No.

require 'rspec'

def help_zoom(key)
  return "Yes" if key.count == 1
  if (Math.sqrt(key.count) ** 2) == key.count
  	answer = (key.count/2)
	  key.count.odd? ? (return "Yes" if key[0..(answer-1)].reverse == key[(answer+1)..-1]) : 
	  (return "Yes" if key[0..(answer-1)].reverse == key[(answer)..-1]) 
	end
  "No"
end

