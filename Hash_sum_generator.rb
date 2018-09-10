# Hash Sum Exercise in Ruby
# In this guide you will learn how to return the sum of a hash where the values contain numbers.
# Summary
# Build out a hash sum that returns a sum of a hash.

# Exercise Description
# "Define a hash_sum that will return the sum of a hash where the values contain numbers and it will return 0 for an empty hash."

# Example Data
# ' invoices = {
#       google: 100.0,
#       yahoo: 105.22,
#       twitter: 42.50
#     } '


require 'rspec'

def hash_sum data
	data.values.inject(&:+)
end

# 2nd way to handle
def hash_sum(hash)
  return 0 if hash.empty?
  hash.values.inject(&:+)
end

describe 'Hash sum' do
  it 'returns the sum of a hash where the values contain numbers' do
    invoices = {
      google: 100.0,
      yahoo: 105.22,
      twitter: 42.50
    }

    expect(hash_sum(invoices)).to eq(247.72)
  end

  it 'returns 0 for an empty hash' do
    empty_hash = {}
    expect(hash_sum(empty_hash)).to eq(0)
  end
end