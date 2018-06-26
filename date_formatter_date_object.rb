# Convert a string that contains a date and a specific format into a Ruby date object.

# Exercise Description
# Given a string date with the format mm/dd/yyyy, convert the string into a Ruby date object that can be treated like a date created directly in Ruby (meaning that you can perform tasks such as calling methods on it).

# Examples
# str_date = "07/31/2018"
# date_parser(str_date).month # => 7
# date_parser(str_date).leap? # => false

require 'rspec'
require 'date'

def date_parser str_date
  Date.strptime(str_date, "%m/%d/%Y")
end

describe 'Date parser' do
  it 'converts a string formatted as mm/dd/yyyy into a date object' do
    str_date = "07/31/2018"
    expect(date_parser(str_date).class).to eq(Date)
    expect(date_parser(str_date).month).to eq(7)
    expect(date_parser(str_date).leap?).to eq(false)
  end
end

# def date_parser date
#   Date.strptime(date, "%m/%d/%Y")
# end

# str_date = "07/31/2018"
# date = Date.strptime(str_date, "%m/%d/%Y")
# p date.class
# p date.month
# p date.leap?