# Recreating the Time Range Checker in Ruby
# In this guide you will learn how to Recreate the time range checker.
# Summary
# Build out a method that can be successfully used for creating a time range checker.

# Exercise Description
# "Define a method that will recreate a time range checker and will return a true or false if time range is within or outside the desired time parameters."

# Example Data
#    ' before do
#     @beginning_of_day = Time.new(2017, 7, 31, 0, 0, 0)
#     @end_of_day = Time.new(2017, 7, 31, 23, 59, 59)'
# Real World Usage
# This exercise will help you in real world applications that are time based and help report to managers if a projects is done inside the timeline or outside the timeline.

require 'rspec'
require 'date'

def during_this_day? (start, final, test)
	(test >= start && test <= final) ? true : false
end

# def during_this_day? (start, final, test)
# 	(test <=> start) == 1 && (test <=> final) == -1 ? true : false
# end

# @beginning_of_day = Time.new(2017, 7, 31, 0, 0, 0)
# @end_of_day = Time.new(2017, 7, 31, 23, 59, 59)
# in_day = Time.new(2017, 7, 31, 9, 59, 59)

# p during_this_day?(@beginning_of_day, @end_of_day, in_day)

# Jordan's Answer
# def during_this_day? start_date, end_date, date_to_check
#   while start_date < end_date
#     return true if start_date == date_to_check
#     start_date += 1
#   end

#   false
# end

describe 'during_this_day?' do
  before do
    @beginning_of_day = Time.new(2017, 7, 31, 0, 0, 0)
    @end_of_day = Time.new(2017, 7, 31, 23, 59, 59)
  end

  it 'returns true if passed a time object within a given range of time objects' do
    in_day = Time.new(2017, 7, 31, 9, 59, 59)
    expect(
      during_this_day?(@beginning_of_day, @end_of_day, in_day)
    ).to eq(true)
  end

  it 'returns false if passed a time object outside a given range of time objects' do
    not_in_day = Time.new(2017, 9, 31, 9, 59, 59)
    expect(
      during_this_day?(@beginning_of_day, @end_of_day, not_in_day)
    ).to eq(false)
  end
end