# ?Wriet a method that takes a sentence and prints it like the following: One word per line, in a rectangular frame.


# *********
# * Hello *
# * World *
# * in    *
# * a     *
# * frame *
# *********

def boxit(str)
arr = str.split(" ")
maxlength = 0
  arr.each do |i|
    maxlength = i.length if i.length > maxlength
  end
boxwidth = maxlength + 4

lid = ""
boxwidth.times do
 lid = lid + "*"
end

puts lid
  arr.each do |i|
    spaces = maxlength-i.length
    spacestr= ""
    spaces.times do
      spacestr = spacestr + " "
    end
  puts "* #{i}#{spacestr} *"
end
puts lid


end


str = "Hello World in a frame"
boxit(str)


