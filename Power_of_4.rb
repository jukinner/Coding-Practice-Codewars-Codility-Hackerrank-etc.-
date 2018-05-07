# Write a method that returns true if a given parameter is a power of 4, and false if it's not. If parameter is not an Integer (eg String, Array) method should return false as well.

# (In C# Integer means all integer Types like Int16,Int32,.....)




def power_of_4(number)
p number
  i = 0
p number.class
  if number.class == Integer || Fixnum && number != 0 && number.class != String && number >= 1
    while 4**i <= number
      if 4**i == number
        x =  true
      else x = false
      end
    i = i + 1
    end
    p x
  else p false
  end



  # best practice
  def power_of_4(n)
  n.is_a?(Integer) && n>0 ? Math.log(n, 4) % 1 == 0 : false
end