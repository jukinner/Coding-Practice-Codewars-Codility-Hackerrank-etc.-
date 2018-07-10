# Finding All Duplicates in an Array in Ruby
# Ruby has a helpful method for removing duplicates from an array, the uniq method. However, there are times when you simply want to know which elements in an array are duplicates. In this guide we'll add a method to the Array class that returns all duplicates. Additionally, I'll examine two approaches to the solution and discuss the benefits of each option.
# Summary
# Build a method that returns all of the duplicates from an array in Ruby.

# Exercise Description
# Add a new method to Ruby's Array class that returns all duplicate values.

# Example Input/Output
# ints = [1, 2, 1, 4]
# ints.find_duplicates # => [1]

# invoices = [
#   { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow' },
#   { company: 'Yahoo',  amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow' },
#   { company: 'Google', amount: 500, date: Date.new(2015, 07, 31).to_s, employee: 'Jon Snow' },
#   { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow' },
#   { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow' },
#   { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow', notes: 'Some notes' },
#   { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow', notes: 'Some notes' },
# ]

# invoices.find_duplicates

# # => [
# # =>   {:company=>"Google", :amount=>500, :date=>'2017-01-01', :employee=>"Jon Snow"},
# # =>   {:company=>"Google", :amount=>500, :date=>'2017-01-01', :employee=>"Jon Snow"},
# # =>   {:company=>"Google", :amount=>500, :date=>'2017-01-01', :employee=>"Jon Snow", :notes=>"Some notes"}
# # => ]

require 'rspec'
require 'date'

# class Array
#   def find_duplicates
#     detect{ |e| count(e) > 1 }
#   end
# end

class Array
  def find_duplicates
    select.with_index do |e,i|
      # i
      # self.index(e)
      i != self.index(e)
    end
  end
  # faster implementation
  def slow_find_duplicates
    group_by { |e| e }.
      each_with_object([]) do |i, arr|
        arr << i.last.drop(1)
      end.flatten
  end

end

describe 'find_duplicates' do
  it 'returns duplicates from an integer based array' do
    ints = [1, 2, 1, 4]
    expect(ints.find_duplicates).to eq([1])
  end

  it 'returns all duplicates of an array of hashes, including when multiple duplicates are found' do
    invoices = [
      { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow' },
      { company: 'Yahoo',  amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow' },
      { company: 'Google', amount: 500, date: Date.new(2015, 07, 31).to_s, employee: 'Jon Snow' },
      { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow' },
      { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow' },
      { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow', notes: 'Some notes' },
      { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Jon Snow', notes: 'Some notes' },
    ]

    expect(invoices.find_duplicates).to eq([
      {:company=>"Google", :amount=>500, :date=>'2017-01-01', :employee=>"Jon Snow"},
      {:company=>"Google", :amount=>500, :date=>'2017-01-01', :employee=>"Jon Snow"},
      {:company=>"Google", :amount=>500, :date=>'2017-01-01', :employee=>"Jon Snow", :notes=>"Some notes"}
    ])
  end
end

a = ["A", "B", "C", "B", "A"]
p a.detect{ |e| a.count(e) > 1 }