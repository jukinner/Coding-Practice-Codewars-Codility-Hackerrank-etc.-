def partlist(arr)
  answer, inc = [], 1
  (arr.count - 1).times do
    array = []
    array << arr[0..(inc - 1)].join(" ")
    array << arr[inc..-1].join(" ")
    answer << array
    inc += 1
  end
  answer
end