# To participate in a prize draw each one gives his/her firstname.

# Each letter of a firstname has a value which is its rank in the English alphabet. A and a have rank 1, B and b rank 2 and so on.

# The length of the firstname is added to the sum of these ranks hence a number som.

# An array of random weights is linked to the firstnames and each som is multiplied by its corresponding weight to get what they call a winning number.

# Example:

# names: "COLIN,AMANDBA,AMANDAB,CAROL,PauL,JOSEPH"
# weights: [1, 4, 4, 5, 2, 1]

# PauL -> som = length of firstname + 16 + 1 + 21 + 12 = 4 + 50 -> 54
# The *weight* associated with PauL is 2 so PauL's *winning number* is 54 * 2 = 108.
# Now one can sort the firstnames in decreasing order of the winning numbers. When two people have the same winning number sort them alphabetically by their firstnames.

# Task:
# parameters: st a string of firstnames, we an array of weights, n a rank

# return: the firstname of the participant whose rank is n (ranks are numbered from 1)

# Example:
# names: "COLIN,AMANDBA,AMANDAB,CAROL,PauL,JOSEPH"
# weights: [1, 4, 4, 5, 2, 1]
# n: 4

# The function should return: "PauL"
# Note:
# If st is empty return "No participants".

# If n is greater than the number of participants then return "Not enough participants".

# See Examples Test Cases for more examples.

def rank(st, we, n)
  return "No participants" if st.empty?
  return "Not enough participants" if n > st.split(",").count
p n
  letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  answer = st.split(",").each_with_object([]).with_index do |(item, arr), index|
    value = 0
    item.split("").each {|x| value += (letters.index(x.downcase) + 1)}
    value += item.length
    arr << value * we[index]
  end
  p answer_hash = st.split(",").each_with_object({}).with_index {|(item, h), index| h[item] = answer[index]}.sort_by{|k,v| [v,k]}.reverse.to_h
  p answer_hash = st.split(",").each_with_object({}).with_index {|(item, h), index| h[item] = answer[index]}.sort_by{|k,v| [v,k]}.reverse.to_h.keys[n-1]
#                               .select {|k,v| v == answer.sort.reverse[n-1]}
#                               .sort_by{|k,v| k}.to_h
#                             .reverse.to_h
#     p answer.sort.reverse[n-1]
#    test = answer_hash.dup
#    p answer_hash.invert.keys
#    p test
#   p final = test.select {|k,v| v == answer.sort.reverse[n-1]}.sort_by
#   p answer_hash.keys
#   p answer_hash.keys[n-1]
end