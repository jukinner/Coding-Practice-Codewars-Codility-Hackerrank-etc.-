# Generate the Alphabet in Ruby
# In this coding exercise we'll walk through how to automatically generate the full alphabet in Ruby, without hard coding in the full set of letters.
# Summary
# Build a method that will print out the alphabet in Ruby without hard coding in the letters a through z.

# Exercise Description
# Implement a method that returns the full alphabet, with each letter being an element in an array.

# Sample Output
# ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
# Real World Usage
# This exercise extends the functionality of ranges to show that you can generate a range of both integers and strings in Ruby. This is a common requirement when it comes to creating a series of values, such as building out a spreadsheet application.

require 'rspec'

def generate_alphabet
  ("a".."z").to_a
end

describe 'Alphabet generator' do
  it 'generates the full alphabet' do
    expect(generate_alphabet).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"])
  end
end