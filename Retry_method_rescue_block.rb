# Using the Retry Method inside of a Ruby Rescue Block

# Summary
# Implement a system that automatically retries a failed API call for a pre-determined number of times.

# Exercise Description
# Build out the ability for a Ruby method that calls a failing API to retry 3 times, along with storing the error messages in an array.

# Real World Usage
# Whenever you work with an API it's important to assume that there will be times when the API is down. In this coding exercise you'll learn how to automatically retry an API call after it has failed.

require 'rspec'

# First answer
# class ApiConnector
#   def initialize
#     @error_array ||= []
#     @retries ||= 0
#   end

#   def send_data
#     begin
#       api_call
#     rescue Errno::ETIMEDOUT => e
#       @error_array << e
#       retry if (@retries += 1) < 3
#     end
#   end

#   def api_call
#     raise Errno::ETIMEDOUT
#   end

#   def errors
#     @error_array.to_s
#   end

#   def attempts
#     @retries
#   end
# end

# second simpler answer with setters and getters
class ApiConnector
  attr_accessor :attempts, :errors

  def initialize
    @attempts = 0
    @errors = []
  end

  def send_data
    begin
      @attempts += 1
      api_call
    rescue Errno::ETIMEDOUT => e
      @errors << e
      retry if @attempts < 3
    end
  end

  def api_call
    raise Errno::ETIMEDOUT
  end
end

api = ApiConnector.new
api.send_data
p api.attempts
p api.errors 


describe 'ApiConnector' do
it 'attempts to connect with an API 3 times and stores the errors in an array' do
  api = ApiConnector.new
    api.send_data
    expect(api.attempts).to eq(3)
    expect(api.errors.to_s).to eq("[#<Errno::ETIMEDOUT: Operation timed out>, #<Errno::ETIMEDOUT: Operation timed out>, #<Errno::ETIMEDOUT: Operation timed out>]")
  end
end
