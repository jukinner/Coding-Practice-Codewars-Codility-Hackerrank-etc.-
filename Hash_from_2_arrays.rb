# Generating a Hash from Two Arrays in Ruby
# This coding exercise examines how to build a method that takes in two arrays and outputs a hash where one array makes up the keys and the other array makes up the values.
# Summary
# Build a Hash generating method that creates a key/value Hash based on the data from two arrays.

# Exercise Description
# Build a method that takes in two arrays as arguments and returns a hash where one array makes up the keys and the other array makes up the values.

# Sample Input
# arr_1 = ['title', 'description', 'rating']
# arr_2 = ['Fountainhead', 'Novel about unique perspectives', 5]
# Sample Output
# {"title"=>"Fountainhead", "description"=>"Novel about unique perspectives", "rating"=>5}

require 'rspec'

# First answer
def title_builder headers, data
  i = 0
  headers.each_with_object(Hash.new) do |e, hash| 
    hash[e]=data[i]
    i += 1
  end
end

# Second option
def title_builder headers, data
  hash = Hash.new
  headers.each_with_index do |header, index|
    hash[header] = data[index]
  end
  hash
end

describe 'Hash builder' do
  it 'combines two arrays to generate a hash' do
    arr_1 = ['title', 'description', 'rating']
    arr_2 = ['Fountainhead', 'Novel about unique perspectives', 5]
    expect(title_builder arr_1, arr_2).to eq({"title"=>"Fountainhead",
                                              "description"=>"Novel about unique perspectives",
                                              "rating"=>5})
  end
end