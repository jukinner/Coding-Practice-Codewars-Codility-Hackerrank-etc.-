# A function receives a certain numbers of integers n1, n2, n3 ...., np(all positive different from 0) and a factor k, k > 0

# The function rearranges the numbers n1, n2, ....., np in such order that generates the minimum number concatenating the digits and this number should be divisible by k.

# The order that the function receives their arguments is:

# rearranger(k, n1, n2, n3,....,np)
# See these examples:

# rearranger(4, 32, 3, 34, 7, 12) == "Rearrangement: 12, 3, 34, 7, 32 generates: 12334732 divisible by 4"

# rearranger(10, 32, 3, 34, 7, 12) ==  "There is no possible rearrangement"
# If there are more than one possible arrengement for the same minimum number, your code should be able to handle those cases.

# Let's see:

# rearranger(6,19, 32, 2, 124, 20, 22) == "Rearrangements: 124, 19, 20, 2, 22, 32 and 124, 19, 20, 22, 2, 32 generates: 124192022232 divisible by 6"
# The arrangements should be in sorted order, as you see: 124, 19, 20, 2, 22, 32 comes first than 124, 19, 20, 22, 2, 32.

# Have an enjoyable time!

# (Thanks to ChristianE.Cooper for his contribution to this kata)


def rearranger(k, *args)
  initial_divisible_by = args.permutation(args.length).to_a.keep_if { |x| (x.join().to_i) % k === 0 }.sort_by { |x| x.join().to_i }
  initial_sort = initial_divisible_by.map { |x| x.join().to_i }.sort
  if initial_sort === []
  	p "There is no possible rearrangement"
  elsif initial_sort[0] === initial_sort[1] && initial_divisible_by[0].uniq.length < initial_divisible_by[0].length
  	p "Rearrangement: #{initial_divisible_by[0].join(', ')} generates: #{initial_sort[0]} divisible by #{k}"
  elsif initial_sort[0] === initial_sort[1]
  	p "Rearrangements: #{initial_divisible_by[0]} and #{initial_divisible_by[1]} generates: #{initial_sort[0]} divisible by 6"
  else
   p "Rearrangement: #{initial_divisible_by[0].join(', ')} generates: #{initial_sort[0]} divisible by #{k}"
  end
end


rearranger(10, 32, 3, 34, 7, 12)
# , "There is no possible rearrangement"
rearranger(4, 32, 3, 34, 7, 12)
    # "Rearrangement: 12, 3, 34, 7, 32 generates: 12334732 divisible by 4")
rearranger(6,19, 32, 2, 124, 20, 22)

rearranger(17,119,119,123,241,153,157,177)
# "Rearrangement: 119, 119, 123, 241, 153, 157, 177 generates: 119119123241153157177 divisible by 17", instead got: "Rearrangements: [119, 119, 123, 241, 153, 157, 177] and [119, 119, 123, 241, 153, 157, 177] generates: 119119123241153157177 divisible by 6"