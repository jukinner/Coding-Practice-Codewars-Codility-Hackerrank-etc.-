# Build an ATM Dispensing Method in Ruby
# Implement an ATM method that properly dispenses the correct denominations to a user.

# Exercise Description
# Build out a method that takes two arguments: the total amount of money requested and the denominations that can be returned. And return the count of how many bills of each denomination should be returned to a user.

# Example Data Input
# 245, [20, 10, 5]
# In this example, 245 is the total amount requested at the ATM, and the array represents 20, 10, and 5 dollar bills.

# Expected Output
# {20=>12, 10=>0, 5=>1}
# This hash represents 12 $20 dollar bills and 1 $5 dollar bills.

require 'rspec'
# My answer
def atm total, arr 
  sum = total
  output = Hash.new
  arr.each do |x|
    count = 0
    if sum >= x
      while sum >= x 
        sum = sum - x
        count += 1
      end
      output[x] = count
    else
      output[x] = count
    end
  end
  p output
end

# Jordan's answer
# def atm total, denominations
# THIS FIRST PART BUILDS THE KEY PORTION OF THE HASH
#   raw_data = denominations.inject({}) do |hash, denomination| #THIS PART ITERATES THROUGH THE ARRAY
#     hash[denomination] = total.divmod(denomination) #DIVMOD RETURNS A 2 PART ARRAY, THE AMOUNT OF TIMES SOMETHING CAN BE DIVIDEDLY CLEANLY AND THE SECOND ELEMENT IS THE REMAINTER. THIS IS PUTTING IN BOTH ELEMENTS INTO THE HASH
#     total -= total.divmod(denomination).first * denomination #UPDATING THE TOTAL
#     hash
#   end

#   raw_data.map do |k, v| 
#     raw_data[k] = v.first #THIS IS JUST GETTING THE FIRST PART OF THE DIVMOD. THE AMOUNT OF TIMES IT CAN BE DIVIDED CLEANLY.
#   end

#   raw_data
# end

describe 'ATM' do
  it 'dispenses the correct denominations to users' do
    expect(atm 110, [100, 20, 10, 5]). to eq({100=>1, 20=>0, 10=>1, 5=>0})
    expect(atm 245, [20, 10, 5]). to eq({20=>12, 10=>0, 5=>1})
  end
end


#LESSON LEARNED. DIVMOD IS AWESOME. IT GIVES YOU TWO ELEMENTS (2, 1) THE FIRST NUMBER IS THE NUM OF TIMES AN ELEMENT IS DIVIDED BY ANOTHER AND THE 2ND ELEMENT IS THE REMAINDER. 





