# Given a list of integers, return the nth smallest integer in the list. Only distinct elements should be considered when calculating the answer. n will always be positive (n > 0)

# If the nth small integer doesn't exist, return -1 (C++) / None (Python) / nil (Ruby).

# Notes:

# "indexing" starts from 1
# huge lists (of 1 million elements) will be tested
# Examples
# [1, 3, 4, 5], 7        ==> nil  # n is more than the size of the list
# [4, 3, 4, 5], 4        ==> nil  # 4th smallest integer doesn't exist
# [45, -10, 4, 5, 4], 4  ==> 45   # 4th smallest integer is 45


# p [45, -10, 4, 5, 4].uniq.size


def nth_smallest(arr, n)
  if arr.uniq.size < n
    p nil
  else 
    p arr.uniq.sort[n-1]
  end 
end

nth_smallest([45, -10, 4, 5, 4], 4)


# refactor-because it returns nil anyway, if there is not nth number. 

def nth_smallest(arr, n)
  arr.uniq.sort[n-1]
end



