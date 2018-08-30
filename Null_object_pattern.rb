# January 29 - Implementing the Null Object Pattern in Ruby
# This coding exercise will test your ability to implement a basic version of the Null Object Pattern in Ruby.

# Summary
# Implement a class that utilizes the Null Object pattern in Ruby.

# Exercise Description
# Build a class that can receive any method call and return the object instead of a no method error.

# Real World Usage
# This is a common pattern to follow in Rails development, specifically when working with guest users in an application.

require 'rspec'

class NullClass
  def method_missing(name, *args, &block)
    self
  end

  def respond_to_missing?(name, include_private = false)
    name.to_s || super
  end
end


describe 'Null class' do
  before do
    @null = NullClass.new
  end

  it 'Returns NullClass object for standard method calls even when not defined' do
    expect(@null.something).to eq(@null)
  end

  it 'Returns true when asked if it responds to non existent methods' do
    expect(@null.respond_to? :something).to eq(true)
  end

  it 'Returns NullClass for method calls with arguments, even when not defined' do
    expect(@null.anything('hey')).to eq(@null)
  end


  it 'Returns NullClass for for method calls with a block, even when not defined' do
    expect(@null.anything { 2 * 2 }).to eq(@null)
  end
end
