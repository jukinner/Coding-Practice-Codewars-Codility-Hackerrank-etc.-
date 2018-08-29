# Calculate the Number of Days Between Two Days in Ruby
# This coding exercise focuses on how to perform date calculations. Specifically, you'll need to find the total number of days that have transpired between Christmas day in 2016 and July 1, 2004 (approximately when Rails when released as an open source project).
# Summary
# Build a program that counts the number of days between two dates.

# Exercise Description
# Build a method to find the total number of days that have transpired between Christmas day in 2016 and July 1, 2004 (approximately when Rails when released as an open source project).

# The total number of days should be
# 4560
# Real World Usage
# # Performing date calculations is important in a number of algorithms, including: scheduling applications, calendar APIs, and any date/time related programs.

require 'rspec'
require 'date'

def day_counter
	@begin = Date.new(2004,07,01)
	@end = Date.new(2016,12,25)
	p days = (@end - @begin).to_i
end



describe 'Day counter' do
  it 'counts the days between Christmas in 2016 and July 1, 2004' do
    expect(day_counter).to eq(4560)
  end
end