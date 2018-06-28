#  Remove Anomalies in a Ruby Array
# When working with large data sets, you'll discover that there are many times where your collections have anomalies that need to be removed. In this guide we'll walk through how to easily remove any values lower or higher than a range of values.
# Summary
# Implement the ability to remove anomalies from a Ruby collection

# Exercise File
# Code File

# Exercise Description
# Given an array of integers, add a method to the array class that removes any/all values higher or lower than specified arguments.

# Example
# [44, 8043, 443, 43452, 2183].remove_anomalies 100, 10_000 # => [8043, 443, 2183]
# Real World Usage
# When working with machine learning algorithms, one of the key requirements is to clean up the data and remove anomalies. Imagine a situation where you are building a baseball statistic algorithm and you want to ignore players who only played in a few games to ensure that you are only looking at data from a typical player. In this guide, we focused on how to leverage a helpful Ruby method that allows you to quickly return only the data that you need.


require 'rspec'

class Array
  def remove_anomalies (start, finish)
    p select { |x| start < x && x < finish}
  end
end

describe 'Remove anomalies' do
  it 'Removes all values above and below specified values' do
    amounts = [44, 8043, 443, 43452, 2183]
    expect(amounts.remove_anomalies 100, 10_000).to eq([8043, 443, 2183])
  end
end
amounts = [44, 8043, 443, 43452, 2183]
amounts.remove_anomalies 100, 10_000
