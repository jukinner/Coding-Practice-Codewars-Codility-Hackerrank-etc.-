# Finding Palindromes in Ruby
# In this guide You will learn how to return palindromes of a given size.
# Summary
# Build out a method that will return all palindromes of a given size.

# Exercise Description
# "Build out a method that will return all palindromes of a given size and return an empty array if the given size of the palindrome is not found."

# Example Data
# 'str = 'I am going to jump into my racecar and see tacocat'
# str_with_different_cases = 'Time to jump into my racEcAr and see Tacocat' '
# ->expect(all_palindromes(7, str)).to eq(['racecar', 'tacocat'])
#     expect(all_palindromes(7, str_with_different_cases)).to eq(['racEcAr', 'Tacocat'])
#     expect(all_palindromes(1, str)).to eq(['I'])

require 'rspec'

def all_palindromes(length, str)
	answer = str.split(" ").each_with_object([]) do |element, arr|
		arr << element if element.length == length && (element.downcase == element.downcase.reverse)
	end
	answer
end

# sample data
# str = 'I am going to jump into my racecar and see tacocat'
# str_with_different_cases = 'Time to jump into my racEcAr and see Tacocat'
# p all_palindromes(7, str)
# p all_palindromes(7, str_with_different_cases)


describe 'all_palindromes' do
  it 'can return all palindomes of a given size' do
    str = 'I am going to jump into my racecar and see tacocat'
    str_with_different_cases = 'Time to jump into my racEcAr and see Tacocat'
    expect(all_palindromes(7, str)).to eq(['racecar', 'tacocat'])
    expect(all_palindromes(7, str_with_different_cases)).to eq(['racEcAr', 'Tacocat'])
    expect(all_palindromes(1, str)).to eq(['I'])
  end

  it 'returns an empty array if no palidromes of the given size are found' do
    str = 'I am going to jump into my racecar and see tacocat'
    empty_str = ''
    expect(all_palindromes(3, str)).to eq([])
    expect(all_palindromes(7, empty_str)).to eq([])
  end
end