# Integrate a Helper Module in Ruby
# This guide walks through how to integrate Ruby modules in order to add custom helper methods to a class.
# Summary
# Build a module with helper methods and call the methods from a class.

# Exercise Description
# Build a helper module called InvoiceHelper that contains a method called taxable? that checks the source of an order and returns if it's taxable order or not. Then build a class called Sale that has a total and source attribute. Then build a method called place_order that returns the total plus a 6% tax rate if the source is AZ or online, and returns the total by itself if the source is any other value.

# Example Input
# s = Sale.new(500, 'AZ')
# s.place_order # => 530.0

# s2 = Sale.new(500, 'TX')
# s2.place_order # => 500.0
# Real World Usage
# Building helper modules is an important task when it comes to code organization. This example is a practical case study on how you can add a boolean helper method to a class without having to clutter the class code.

require 'rspec'

module InvoiceHelper
  def taxable? source
    if source == 'AZ' || source == 'online'
      true
    else
      false
    end
  end
end

class Sale
  include InvoiceHelper
  def initialize(total, source)
    @total = total
    @source = source
  end

  def place_order
    if taxable? @source
      return (@total * 1.06)
    else
      return @total
    end
  end
end
# Jordan's answer
# module InvoiceHelper
#   def taxable? source
#     if source == 'online' or source == 'AZ'
#       true
#     else
#       false
#     end
#   end
# end

# class Sale
#   include InvoiceHelper

#   def initialize(total, source)
#     @source = source
#     @total = total
#   end

#   def place_order
#     return (@total + (@total * 0.06)) if taxable? @source
#     @total
#   end
# end

describe 'Tax helper' do
  it 'calculates the correct tax amount if source is online or AZ' do
    s = Sale.new(500, 'AZ')
    expect(s.place_order).to eq(530.0)
  end

  it 'Ensures that an InvoiceHelper module has been included in the class' do
    s = Sale.new(500, 'AZ')
    expect((class << s; self; end).included_modules.first).to eq(InvoiceHelper)
  end
end