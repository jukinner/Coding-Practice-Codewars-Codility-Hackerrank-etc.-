# Summary
# Refactor a Ruby class so that it uses the attr_extras gem.

# Exercise File
# Code File

# Exercise Description
# Clean up how Ruby defines its list of attributes by leveraging the attr_extras gem. This will allow you to remove unnecessary boilerplate code when listing attributes.
require 'rspec'
require 'attr_extras'
# Class to Refactor
# class PurchaseOrder
#   attr_accessor :client, :total

#   def initialize(client, total)
#     @client = client
#     @total = total
#   end

#   def generate_order
#     "#{client}: #{total}"
#   end
# end

# po = PurchaseOrder.new('Google', 500)
# po.client # => 'Google'
# po.generate_order # => 'Google: 500'
# Research the attr_extras gem to see how you can streamline this class and remove the initialize method.


# My solution
class PurchaseOrder
  attr_accessor :client, :total

  # def initialize(client, total)
  #   @client = client
  #   @total = total
  # end

  attr_initialize :client, :total #replaces initialize method. pretty cool. 

  def generate_order
    p "#{client}: #{total}"
  end
end

describe 'Attr Extra refactor' do
  it 'can be created with a client and total' do
    po = PurchaseOrder.new('Google', 500)
    expect(po.generate_order).to eq('Google: 500')
  end

  it 'allows the client value to be changed' do
    po = PurchaseOrder.new('Google', 500)
    po.client = "Yahoo"
    expect(po.client).to eq('Yahoo')
  end
end