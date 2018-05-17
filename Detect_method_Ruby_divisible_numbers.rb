require 'rspec'

def mod_checker arr, num1, num2
  arr.detect do |mod|
    mod % num1 == 0 && mod % num2 == 0
  end
end

# detect takes a block, iside of each array element, we can run conditionals on those items. what we put in the block tests for true or false. As soon it finds a true value, it stops and returns that number. That is how you can find the lease common multiple method from Ruby. 

describe 'Mod Checker' do   
 it 'returns the first value divisible by 12 and 16' do 
   expect(mod_checker(1..200, 12, 16)).to eq (48)
   expect(mod_checker(1..120000, 200, 73)).to eq(14600)
 end
end