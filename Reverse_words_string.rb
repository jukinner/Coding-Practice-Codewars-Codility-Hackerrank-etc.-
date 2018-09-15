# Reversing the Words in a String
# In today's coding exercise the task is to reverse the words in a string, where words are separated by one or more spaces.
# Summary
# Build a program that reverses the words in a string, where words are separated by one or more spaces.

# Exercise Description
# Given the following strings:

# "dog lazy the over jumped fox brown quick The"
# Write a program that reverses the order of the words.

# Sample Input
# "dog lazy the over jumped fox brown quick The"
# Sample Output
# "The quick brown fox jumped over the lazy dog"
require 'rspec'

# def sentence_reverser str
# 	str.split(" ").reverse.join(" ")
# end

# def sentence_reverser str
# 	i, answer = -1, []
# 	(str.split(" ").length).times do |x|
# 		answer.push(str.split(" ")[i])
# 		i -= 1
# 	end
# 	p answer
# end

def sentence_reverser str
	final = str.split(" ").each_with_object([]) do |element, arr|
		arr.unshift(element)
	end
	p final.join(" ")
end

test_sentence = "be. to meant I and backwards am I"
p sentence_reverser(test_sentence)

describe "Sentence reverser" do
  it 'reverses the words in a sentence' do
    test_sentence = "backwards am I"
    expect(sentence_reverser(test_sentence)).to eq('I am backwards')
  end
end