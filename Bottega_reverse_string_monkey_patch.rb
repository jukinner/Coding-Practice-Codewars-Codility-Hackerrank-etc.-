# January 15 - Reverse the Letters in a String Without Using the Reverse Method in Ruby
# In this coding exercise you'll re-create the reverse method in Ruby. You are required to build a method that reverses the characters in a string and returns the reversed values.
# Summary
# Build a method that reverses the characters in a string without using the reverse method.

# Exercise Description
# You will need to perform monkey patching and open up the String class in Ruby. From there create a method called alt_reverse that reverses the characters in a string without calling the reverse method provided by Ruby.

# Sample Use
# "Hi there".alt_reverse # "ereht iH"

require 'rspec'

class String
	def alt_reverse
		string, answer, i = self.chars, "", 0
		string.length.times do
			answer.insert(i, string.pop)
			i += 1
		end
		p answer
	end
end

describe 'Letter reversing' do
  it 'reverses the letters of a string without using the reverse method' do
    expect("Hi there".alt_reverse).to eq("ereht iH")
  end
end

"Hi there".alt_reverse

# ALTERNATE answerclass String
class String  
  def alt_reverse
    reversed_string = ""
    string_length = self.length - 1

    string_length.downto(0).each do |l|
      reversed_string << self[l]
    end

    reversed_string
  end
end