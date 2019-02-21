
Array#length will give you the number of top-level elements in an array.

Your task is to create a function deepCount that returns the number of ALL elements within an array, including any within inner-level arrays.

For example:

deepCount([1, 2, 3]);  
//>>>>> 3
deepCount(["x", "y", ["z"]]);  
//>>>>> 4
deepCount([1, 2, [3, 4, [5]]]);  
//>>>>> 7
The input will always be an array.

def deep_count(a)
  answer = 0
  a.each do |x|
    if x.is_a? Array
      answer += 1 + deep_count(x)    
    else
      answer += 1
    end
  end
  return answer
end