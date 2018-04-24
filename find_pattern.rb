def find_pattern(arr)
  i = 0
  pattern = []
  (arr.length-1).times do 
    pattern << (arr[i+1] - arr[i])
    i = i + 1
  end
  l=pattern.length

  if pattern.slice(0..((l/2)-1)) == pattern.slice((l/2)..(l-1))
    pattern = pattern.slice(0..((l/2)-1))
        
    if pattern.slice(0..((l/2)-1)) == pattern.slice((l/2)..(l-1))
    p pattern = pattern.slice(0..((l/2)-1))
    elsif
    p pattern = pattern.slice(0..((l/2)-1))
    end
  end
end

find_pattern([1, 2, 3, 4, 5])
find_pattern([1, 2, 3, 4, 5, 4, 3, 2, 1, 2, 3, 4, 5, 4, 3, 2, 1])
find_pattern([1, 5, 2, 3, 1, 5, 2, 3, 1])
find_pattern([1, 5, 4, 8, 7, 11, 10, 14, 13])