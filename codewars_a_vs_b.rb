array1 = [121, 144, 19, 161, 19, 144, 19, 11]
array2 = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
p array1.sort
p array2.each {|x| x = x}.each {|r| Math.sqrt(r)}.sort
y = false
y = true if (array1.sort) == (array2.each {|x| x = (x)}.sort)
p y
p Math.sqrt(121).to_i