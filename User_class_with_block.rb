# Build a User Class that Can Be Passed a Block to Set Its Values
# In this Ruby coding exercise your knowledge of blocks will be tested. The requirement is to build a User class that can be created and passed a block to set its values in addition to the traditional process for setting an object's data.
# Summary
# Build a User Class that Can Be Passed a Block to Set Its Values.

# Exercise Description
# In order to properly pass this coding exercise you'll need to create a Ruby User class that is flexible enough to take a block along with the traditional data setting process..

# Examples
# user = User.new do |u|
#   u.name = "Jordan"
#   u.email = "test@test.com"
# end

# user.name # 'Jordan'
# user.email # 'test@test.com'
# Should work, along with:

# user = User.new
# user.name = "Jordan"
# user.email = "test@test.com"

# user.name # 'Jordan'
# user.email # 'test@test.com'

require 'rspec'

describe 'Block User' do
  it 'Allows a user to be created with a block of values' do
    user = User.new do |u|
      u.name = "Jordan"
      u.email = "test@test.com"
    end

    expect(user.name).to eq('Jordan')
    expect(user.email).to eq('test@test.com')
  end

  it 'Allows a user to be created witout default values' do
    user = User.new
    user.name = "Jordan"
    user.email = "test@test.com"

    expect(user.name).to eq('Jordan')
    expect(user.email).to eq('test@test.com')
  end
end
