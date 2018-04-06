# Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

# def solution(str)
  
# end

# solution('abc') # should return ['ab', 'c_']
# solution('abcdef') # should return ['ab', 'cd', 'ef']

# def solution(str)
#   s=str.split("")
#   s.length
#   i=0
#   n=1
#   destination = Array.new
#   if s.length % 2 != 0
#     s.push("_")
#     ((s.length+1)/2).times do 
#       destination << (s[i] + s[n]) 
#       i = i+2
#       n = n+2
#     end
#     p destination
#   else 
#     ((s.length)/2).times do
#       destination << (s[i] + s[n]) 
#         i = i+2
#         n = n+2
#     end
#     p destination
#   end
# end

def solution(str)
  p str = str.concat('_')
  p str.scan /../
end

solution('abc')
solution('abcdef')
