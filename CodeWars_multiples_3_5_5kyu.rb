# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

# Note: If the number is a multiple of both 3 and 5, only count it once.

def solution(number)
 answer = (number - 1).downto(3).to_a.each_with_object([]) do |item, arr|
 		if item % 15 == 0
 			arr << item
 		elsif item % 5 == 0
 			arr << item
 		elsif item % 3 == 0
 			arr << item
 		end
  end.inject(:+)
end

def solution(number)
	sum = 0
 (number - 1).downto(3).to_a.each do |item|
 		if item % 15 == 0
 			sum += item
 		elsif item % 5 == 0
 			sum += item
 		elsif item % 3 == 0
 			sum += item
 		end
  end
  p sum
end



solution(10)
solution(20)
solution(200)