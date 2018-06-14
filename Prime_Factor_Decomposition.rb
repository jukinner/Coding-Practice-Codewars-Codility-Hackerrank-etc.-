require 'prime'

def primeFactors(n)
  factors = []
  d = n
  divisors = []
  i = 2
  while Prime.prime?(d) == false
    divisors = []
    if Prime.prime?(i)
      while d % i == 0
        d = d / i
        p divisors << i
      end
    p factors << divisors
    end
  i += 1
  end
  factors << [d]
  formatted = []
  factors.each do |x|
    if x.count > 1
      formatted << "(#{x[0]}**#{x.count})"
    else
      formatted << "(#{x[0]})"
    end
  end
  p formatted.join
end

primeFactors(7775460)
# (2**2)(3**3)(5)(7)(11**2)(17)


# Simpler way using built in Prime division library
def primeFactors(n)
  answer = Prime.prime_division(n)
  formatted = []
  answer.each do |x|
    if x[1] > 1
      formatted << "(#{x[0]}**#{x[1]})"
    elsif x[1] == 1
      formatted << "(#{x[0]})"
    end
  end
  p formatted.join
end



