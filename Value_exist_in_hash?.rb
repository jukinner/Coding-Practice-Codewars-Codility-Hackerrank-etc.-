# How to Check if a Value Exists in a Set of Nested Hashes in Ruby
# This coding exercise extends our knowledge on the Hash data structure and walks through how to check and see if a value exists in any number of Hash collections nested inside an array.
# Summary
# Build a method that looks through an array of hashes to see if a value exists anywhere inside of one of the hashes.

# Exercise Description
# In order to properly pass this coding exercise you'll need to open up Ruby's Array class and add a method called value_included? that iterates through the array of hashes and returns true if a value exists inside any of the hash values and false if the value is not found.

# Example Data
# books = [
#   {
#     :title => 'Fountainhead',
#     :author => 'Ayn Rand'
#   },
#   {
#     :title => 'Deep Work',
#     :author => 'Cal Newport'
#   }
# ]
# Example Process
# books.value_included? 'Deep Work' # true
# books.value_included? 'Something that does not exist' # false

require 'rspec'

# First Answer
class Array
  def value_included? val
    each do |i|
      return true if i.has_value?(val)
    end
    false
  end
end



describe 'Collection search' do
  it 'checks to see if a value is included in any number of hashes nested inside an array' do
    books = [
      {
        :title => 'Fountainhead',
        :author => 'Ayn Rand'
      },
      {
        :title => 'Deep Work',
        :author => 'Cal Newport'
      }
    ]

    expect(books.value_included? 'Deep Work').to eq(true)
    expect(books.value_included? 'Something Else').to eq(false)
  end
end

