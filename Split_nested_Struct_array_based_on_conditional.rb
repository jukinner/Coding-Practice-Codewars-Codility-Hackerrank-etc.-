# February 27 - How to Split a Nested Array in Ruby Based on a Conditional
# In this guide we'll walk through how to split a nested array based on a conditional equation into two arrays.


# Summary
# Implement a method in Ruby that splits an array into two arrays based on a conditional equation.

# Exercise Description
# Given an array, build a method that splits the array into two arrays based on being greater than or less than a specific value.

# Sample Input
# Invoice = Struct.new(:title, :total, :category)
# google = Invoice.new('Google', 500, 'SEM')
# facebook = Invoice.new('Facebook', 1000, 'Social')
# linkedIn = Invoice.new('LinkedIn', 200, 'Social')
# Expected Output
# [500, 1000] # Greater than
# [200] # Greater than
# Real World Usage
# There are many times in a Ruby application that you need to split an array based on a specific filter, this guide tests your knowledge of how to split a collection based on a specific value.



require 'rspec'

# def invoice_filter(n)
#   totals = []
#   n.each do |r|
#     totals << r.total
#     p totals
#   end
# end

def invoice_filter invoices
  invoices.map(&:total).partition { |i| i > 300 }
end

# describe 'Invoice filter' do
#   it 'splits invoices over 300' do
#     Invoice = Struct.new(:title, :total, :category)
#     google = Invoice.new('Google', 500, 'SEM')
#     facebook = Invoice.new('Facebook', 1000, 'Social')
#     linkedIn = Invoice.new('LinkedIn', 200, 'Social')

#     invoices = [google, facebook, linkedIn]

#     expect(invoice_filter(invoices).first).to eq([500, 1000])
#     expect(invoice_filter(invoices).last).to eq([200])
#   end
# end

# Invoice = Struct.new(:title, :total, :category)
#     google = Invoice.new('Google', 500, 'SEM')
#     facebook = Invoice.new('Facebook', 1000, 'Social')
#     linkedIn = Invoice.new('LinkedIn', 200, 'Social')

#     invoices = [google, facebook, linkedIn]
# totals = []
# invoices.each do |r|
#   totals << r.total
#   p totals
# end

# p totals