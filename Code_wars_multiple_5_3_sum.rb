# Your task is to write function findSum.

# Upto and including n, this function will return the sum of all multiples of 3 and 5.

# For example:

# findSum(5) should return 8 (3 + 5)

# findSum(10) should return 33 (3 + 5 + 6 + 9 + 10)


def find(n)
  base = (0..n).to_a
  multiples = []
  base.each do |x|
    multiples << x if (x % 3 == 0) || (x % 5 == 0)
  end
  p multiples.inject(&:+)
end

find(10)