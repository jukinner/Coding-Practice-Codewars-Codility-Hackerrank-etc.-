# Common denominators

# You will have a list of rationals in the form

#  { {numer_1, denom_1} , ... {numer_n, denom_n} }
# or

#  [ [numer_1, denom_1] , ... [numer_n, denom_n] ]
# or

#  [ (numer_1, denom_1) , ... (numer_n, denom_n) ]
# where all numbers are positive ints.

# You have to produce a result in the form

#  (N_1, D) ... (N_n, D)
# or

#  [ [N_1, D] ... [N_n, D] ]
# or

#  [ (N_1', D) , ... (N_n, D) ]
# or

# {{N_1, D} ... {N_n, D}}
# depending on the language (See Example tests)

# in which D is as small as possible and

#  N_1/D == numer_1/denom_1 ... N_n/D == numer_n,/denom_n.
# Example:

# convertFracs [(1, 2), (1, 3), (1, 4)] `shouldBe` [(6, 12), (4, 12), (3, 12)]


def convertFracts(testa)
  lcm_array = []
  testa.each do |x|
    lcm_array << x[1]
  end
  lcm = lcm_array.reduce(1, :lcm)
  testa.map do |r|
    r[0] = r[0] * (lcm/r[1])
    r[1] = lcm
  end
  return testa
end

# BEST PRACTICE REFACTORED
def convertFracts(lst)
  lcm = lst.reduce(1) { |x,y| x.lcm(y[1]) }
  lst.map { |x| [lcm/x[1]*x[0], lcm] }
end