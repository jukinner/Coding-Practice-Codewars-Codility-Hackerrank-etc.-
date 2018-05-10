# Build a method that sorts the keys in a hash by length.

# Exercise Description
# Given a Ruby Hash, build a method that returns an array of keys that are sorted based on length.


require 'rspec'

# steps
# 1) grab keys
# 2) convert to strings
# 3) sort by length

# My answer
def key_sorter collection
  destination = Array.new
  collection.each_key {|key| destination << key.to_s }
  p destination.sort_by {|x| x.length}
end

# Jordan's answer
# def key_sort collection
#   collection.keys.map(&:to_s).sort_by do |i|
#     i.length
# end


describe 'Key Sorter' do
  it 'Sorts a set of hash keys by length' do
    collection = { some_key: 'Anything', "string key" => 'Anything', 8383 => 'Does not matter' }
    expect(key_sorter(collection)).to eq(["8383", "some_key", "string key"])
  end
end

# collection = { some_key: 'Anything', "string key" => 'Anything', 8383 => 'Does not matter' }

#   destination = Array.new
#   collection.each_key {|key| destination << key.to_s }
#   p destination.sort_by {|x| x.length}