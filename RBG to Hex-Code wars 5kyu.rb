#   The rgb() method is incomplete. Complete the method so that passing in RGB decimal values will result in a hexadecimal representation being returned. The valid decimal values for RGB are 0 - 255. Any (r,g,b) argument values that fall out of that range should be rounded to the closest valid value.

# The following are examples of expected output values:

# rgb(255, 255, 255) # returns FFFFFF
# rgb(255, 255, 300) # returns FFFFFF
# rgb(0,0,0) # returns 000000
# v # returns 9400D3




def rgb(r,g,b)
  values = [r,g,b]
  values = values.map do |x|
    if x > 255
      x = 255
    elsif x < 0
      x = 0
    else
      x
    end
  end
  hexlookup = Hash.new
  hexlookup = {10 => "A", 11 => "B", 12 => "C", 13 => "D", 14 => "E", 15 => "F" }
  hexcode = Array.new
  values.map do |x|
    hexcode << x / 16
    hexcode << x % 16
  end
  hexcode = hexcode.map do |x|
    if x > 9
      x = hexlookup.fetch_values(x)
    else
      x
    end
  end
  p hexcode.flatten.join
end

rgb(255, 255, 300)
rgb(255, 255, 255)
rgb(0,0,0)
rgb(148, 0, 211)






