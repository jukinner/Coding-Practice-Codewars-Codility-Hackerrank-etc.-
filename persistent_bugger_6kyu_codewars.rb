# Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

# For example:

#  persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
#                  # and 4 has only one digit

#  persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
#                   # 1*2*6=12, and finally 1*2=2

#  persistence(4) # returns 0, because 4 is already a one-digit number

require 'rspec'

def persistence(n)
  counter = 0
  return counter if n.digits.count == 1
  while n.digits.count > 1
    n = n.digits.inject(&:*)
    counter += 1
  end
  counter
end

describe "persistent bugger tests" do
	it 'can handle different scenarios' do
    expect(persistence(39)).to eq(3)
    expect(persistence(4).to eq(0)
    expect(persistence(25)).to eq(2)
    expect(persistence(999)).to eq(4)
  end
end