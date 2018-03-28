# Description:
# An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

# Note: anagrams are case insensitive

# Complete the function to return true if the two arguments given are anagrams of theeach other; return false otherwise.

# Examples
# "foefet" is an anagram of "toffee"

# "Buckethead" is an anagram of "DeathCubeK"



require 'rspec'
# str1 = "toffee"
# str2 = 'toffee'

def anagram str1, str2
  str1.downcase.chars.sort.join == str2.downcase.chars.sort.join
end


describe 'anagram inputs are strings' do
  it 'class of input 1 to be a string' do 
    expect(str1.class).to eq(String)
  end


  it 'class of input 2 to be a string' do 
    expect(str2.class).to eq(String)
  end
end

describe 'anagram input lengths' do
  it 'inputs have the same length' do
    expect(str1.length).to eq(str2.length)
  end
end

describe 'Anagram method test returns true or false' do 
  it 'method returns true' do
    expect(anagram str1, str2).to eq(true)
  end
end

describe 'Anagram method tests 2 strings to be anagrams' do
  it 'two strings are anagrams' do
    expect(anagram "Buckethead", "DeathCubeK").to eq(true)
  end

  it 'two strings are anagrams' do
    expect(anagram "dumble", "bumble").to eq(false)
  end
end





