# Pass Multiple Blocks to a Method by Leveraging Lambdas in Ruby
# In many cases, lambdas are the most effective when they're used in conjunction with methods. A method is limited to taking a single block in Ruby, however by leveraging lambdas you are able to pass in as many blocks as needed.
# Summary
# Implement a method that can accept multiple blocks by leveraging lambdas.

# Exercise Description
# Build a method that takes multiple lambdas as arguments in order to illustrate how a single method can be passed multiple blocks as arguments.

# Real World Usage
# By default, a method in Ruby is limited to only receiving a single block as an argument. This is where lambdas (also known as closures in other languages) are able to extend the functionality of a single method. A method can take an unlimited number of lambdas as argument, so therefore lambdas allow you to give plain Ruby methods the ability to accept multiple blocks as arguments. This exercise helps to showcase this behavior by building a User tracking solution.

require 'rspec'
require 'time'

# my try-nI read the test incorrectly which didn't help! there are 3 arguments being passed to user_update
# location_query = -> { |a, b| p "Location: #{a}, #{b}"}

# time_query = -> { p "Time: #{Time.now}" }

# def user_update(name)
#   p "Name: #{name}"
# end
# status = user_update 'Tiffany', location_query.call(53.23, -123.32), time_query.call
# p status`



# correct way
# the thinking process should be how can I use methods and lambdas together? you can use lambdas to encapsulate behavior and pass as many as you need to a method

location_query = -> (lat, long) do
  "#{lat}, #{long}"
end

time_query = -> do
  Time.now
end

def user_update name, set_location, pinged_at
  <<~EOL
  Name: #{name}
  Location: #{set_location}
  Time: #{pinged_at}
  EOL
end
# status = user_update('Tiffany', location_query.call(53.23, -123.32), time_query.call)

describe 'Lambdas vs methods' do
  it 'shows that methods can be passed multiple blocks when leveraging lambdas' do
    status = user_update('Tiffany', location_query.call(53.23, -123.32), time_query.call)
    expect(status).to eq("Name: Tiffany\nLocation: 53.23, -123.32\nTime: #{Time.now}\n")
  end
end
