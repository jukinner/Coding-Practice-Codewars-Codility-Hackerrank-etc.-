# The main idea is to count all the occuring characters(UTF-8) in string. If you have string like this "aba" then the result should be { 'a': 2, 'b': 1 }

# What if the string is empty ? Then the result should be empty object literal { }

#final answer
def count_chars(s)
  answer = Hash.new
  s.split("").each { |x| answer[x] = s.count(x)}
  p answer
end

# Test.assert_equals(count_chars("aba"), {"a" => 2, "b" => 1})
# Test.assert_equals(count_chars(""), {})


#long form

def count_chars(s)
  answer = Hash.new
  s.split("").each do |x| 
    answer[x] = s.count(x)
  end
  p answer
end

count_chars('aba')