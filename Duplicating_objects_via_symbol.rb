# Duplicating Objects in Ruby by Leveraging Symbols
# In this guide you'll walk through how to leverage symbols in Ruby in order to duplicate objects, including how they can share an object_id.
# Summary
# Implement a method that clones a string so that they use the same object_id.

# Exercise Description
# Given an array of strings, normally each string would have its own object_id. In this exercise you'll need to figure out how to convert each element so that they share the same object_id (assuming that the strings are equal).

# Example Input
# str_array = ['some word', 'some word', 'some word']
# cloned_array = duplicate_objects str_array

# cloned_array.first.object_id  # => 70265442975020
# cloned_array.last.object_id   # => 70265442975020


require 'rspec'

# my answer
def duplicate_objects array
  array.map(&:to_sym)
end

describe 'Duplicating objects' do
  it 'clones an string and maintains the same object_id assuming that the string is identical' do
    str_array = ['some word', 'some word', 'some word']
    cloned_array = duplicate_objects str_array
    expect(cloned_array.first.object_id).to eq(cloned_array.last.object_id)
  end
end

