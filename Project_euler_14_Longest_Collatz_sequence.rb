# Longest Collatz sequence
# Problem 14 
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def collatz(n)
  total = [0, 0]
  while n > 600_000
    n -= 1
    r = n 
    chain = []
    while r > 1
      if r.even?
        chain << (r/2)
        r = (r/2)
      elsif r.odd?
        chain << ((3*r) + 1) 
        r = ((3*r) + 1)
      end
    end
    total = [chain.count, n] if chain.count > total[0]
  end
  p total
end

collatz 1_000_000

# [524, 837799]