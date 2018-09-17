# Group Duplicate Characters Together in Ruby
# This guide will show you a quick and simple way that you can implement a method that can arrange a set of values in a string into characters groups.
# Summary
# Build a method that can arrange a given string and group them into their characters.

# Exercise Description
# Define a method that can group a sequence of letters by characters, including unsorted strings and integers.

# Example Data
# 'aaabbbbbbccc'
# -> ["aaa", "bbbbbb", "ccc"]
# 'aabbcccca'
# -> ["aaa", "bb", "cccc"]
# '14832131'
# -> ["111", "2", "33", "4", "8

require 'rspec'

# class String
# 	def group_by_character
# 		answer, empty = [], ""
# 		self.split("").sort.each_with_index do |item, index|
# 			if empty.length == 0
# 				p 1
# 				empty << item
# 			elsif item == empty.split("").last
# 				p 2
# 				empty << item
# 			elsif item == ""
# 				p 3
# 				answer << empty	
# 			elsif item != empty.split("").last
# 				p 4
# 				answer << empty
# 				empty = ""
# 				empty << item
# 				p empty
# 			else
# 				p 5
# 				answer << empty
# 				empty = ""
# 			end
# 		end
# 		p answer
# 	end
# end

class String
  def group_by_character
    split(//).sort.slice_when do |previous_element, current|
      current != previous_element[-1]
    end.map(&:join)
  end
end

# Ethan's Method
def string_sort str
  answer = []
  p bob = str.chars
  bob.map do |i| 
    answer << bob.grep(/[#{i}]/).join
  end
  return answer.uniq
end

p 'aaabbbbbbccc'.group_by_character
# 'aabbcccca'.group_by_character
# '14832131'.group_by_character


describe 'group_by_character' do
  it 'can group a sequence of letters' do
    expect('aaabbbbbbccc'.group_by_character).to eq(["aaa", "bbbbbb", "ccc"])
  end

  it 'can group a sequence of letters that are unsorted' do
    expect('aabbcccca'.group_by_character).to eq(["aaa", "bb", "cccc"])
  end

  it 'can group a sequence of string based integers' do
    expect('14832131'.group_by_character).to eq(["111", "2", "33", "4", "8"])
  end
end
