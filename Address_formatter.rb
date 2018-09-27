# Address Formatter in Ruby
# In this guide you will learn how to take in an address as a hash and have it output a formatted string.
# Summary
# Build out a method that will format addresses.

# Exercise Description
# "Define a method that will take in an address as a hash and output a formatted string."

# Example Data
# 'address_data = {
#       'account':     'Google',
#       'street_one':  '1600 Amphitheatre Parkway',
#       'street_two':  nil,
#       'city':        'Mountain View',
#       'state':       'CA',
#       'postal_code': '94043'
#     }

#     formatted_address = <<~ADDRESS
#       Google
#       1600 Amphitheatre Parkway
#       Mountain View, CA 94043
#     ADDRESS'
# -> expect(AddressFormatter.format(address_data)).to eq(formatted_address)



require 'rspec'

class AddressFormatter

  def self.format (data)
    if data[:street_two] == nil
      <<~ADDRESS
      #{data[:account]}
      #{data[:street_one]}
      #{data[:city]}, #{data[:state]} #{data[:postal_code]}
    ADDRESS
    else
      <<~ADDRESS
      #{data[:account]}
      #{data[:street_one]}
      #{data[:street_two]}
      #{data[:city]}, #{data[:state]} #{data[:postal_code]}
    ADDRESS
    end
  end

end



address_data = {
      'account':     'Google',
      'street_one':  '1600 Amphitheatre Parkway',
      'street_two':  nil,
      'city':        'Mountain View',
      'state':       'CA',
      'postal_code': '94043'
    }

AddressFormatter.format(address_data)    

describe AddressFormatter do
  it 'takes in an address as a hash and outputs a formatted string' do
    address_data = {
      'account':     'Google',
      'street_one':  '1600 Amphitheatre Parkway',
      'street_two':  nil,
      'city':        'Mountain View',
      'state':       'CA',
      'postal_code': '94043'
    }

    formatted_address = <<~ADDRESS
      Google
      1600 Amphitheatre Parkway
      Mountain View, CA 94043
    ADDRESS

    expect(AddressFormatter.format(address_data)).to eq(formatted_address)
  end
end