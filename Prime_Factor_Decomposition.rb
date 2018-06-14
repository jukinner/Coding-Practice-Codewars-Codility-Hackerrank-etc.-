require 'prime'

def primeFactors(n)
  factors = []
  d = n
  divisors = []
  i = 2
  while Prime.prime?(d) == false
    if Prime.prime?(i) && d % i == 0
      while d % i == 0
      
#       if d % i == 0
        d = d / i
        p divisors << i
      end
    p factors << divisors
    i += 1
    divisors = []
    end
  end
  p factors
  p d
  p i
end

primeFactors(7775460)