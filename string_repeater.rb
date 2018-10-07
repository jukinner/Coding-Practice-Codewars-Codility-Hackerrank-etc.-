# Write a class function named repeat() that takes two arguments (a string and a long integer), and returns a new string where the input string is repeated that many times. For 

# example:

# Repeater.repeat("a", 5)
# should return

# "aaaaa"

require 'rspec'

def repeater(string, n)
  answer = ""
  n.times do 
    answer << string
  end
  answer
end

# repeater('Na', 16)
# Test.describe("Basic Tests", function(){
#   Test.assertEquals(repeater('a', 5), 'aaaaa')
#   Test.assertEquals(repeater('Na', 16), 'NaNaNaNaNaNaNaNaNaNaNaNaNaNaNaNa')
#   Test.assertEquals(repeater('Wub ', 6), 'Wub Wub Wub Wub Wub Wub ')
# })

describe 'tests string repeater class function' do 
  it 'can handle sindle letter' do 
    expect(repeater('a', 5)).to eq('aaaaa')
  end

  it 'can handle 2 letter word' do 
    expect(repeater('Na', 16)).to eq('NaNaNaNaNaNaNaNaNaNaNaNaNaNaNaNa')
  end

  it 'can handle 3 letter word and space' do
    expect(repeater('Wub ', 6)).to eq('Wub Wub Wub Wub Wub Wub ')
  end
end
