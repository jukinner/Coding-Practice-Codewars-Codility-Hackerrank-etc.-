# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

divisors = (1..20).to_a
array = []
num = 20
result = false
while result == false
  num += 20
  array = []
  divisors.each do |x|
    if num % x == 0
      array << x
    end
  end
  if array.count == 20
    result = true
  end
end

print num 

