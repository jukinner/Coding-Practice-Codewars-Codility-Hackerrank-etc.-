string = "the quick Brown fox jumped over the lazy dog!"

array = string.chars
i = 0
array.length.times do 
  pop = array.pop
  array = array.insert(i, pop)
  i += 1
end

p array.join()