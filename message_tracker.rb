# Building a Message Tracker in Ruby
# This guide walks through the steps to effectively build a method that can track text messages sent between users and keep a log of when
#  the messages were sent.

# Summary
# Build a method that keeps track of text messages sent between users.

# Exercise Description
# Define a class that can first, create a new text message. Second, determine the correct time and date of the text. 
# Third, identify which user is sending the message and to whom they are sending it to. 
# Lastly, be able to have a history of previous messages sent and received between the two users.

# Example Data
#     {
#       :sender=>"Jordan",
#       :message=>"Hi there",
#       :timestamp=>Date.today
#     },
#     {
#       :sender=>"Tiffany",
#       :message=>"Hi back",
#       :timestamp=>Date.today
#     }
# Real World Usage
# This exercise will teach you how to build a method that tracks text messages. Since everyone sends multiple texts a day, 
# it makes sense to understand how it works. Although fairly simple to build, it is an important skill to know the steps to make it run properly.
require 'date'
class Chat
  def initialize(user_1:, user_2:)
    @user_one = user_1
    @user_two = user_2
    @log = Array.new
  end

  def new_message(msg, send_from)
    @message = Hash.new
    @message = {:sender => send_from, :message => msg, :timestamp => Date.today}
    @log << @message
    p @log
  end

  def messages
    p @log
  end
end



require 'rspec'
require 'date'

class Chat
  def initialize(user_1:, user_2:)
    @user_one = user_1
    @user_two = user_2
    @log = Array.new
  end

  def new_message(msg, send_from)
    @message = Hash.new
    @message = {:sender => send_from, :message => msg, :timestamp => Date.today}
    @log << @message
    return @message
  end

  def messages
    return @log
  end
end

describe 'Message tracker' do
  before do
    @user_one = 'Jordan'
    @user_two = 'Tiffany'
    @chat = Chat.new(user_1: @user_one, user_2: @user_two)
  end

  it 'allows messages to be sent between users' do
    @chat.new_message('Hi there', @user_one)
    expect(@chat.new_message('Hi back', @user_two)).to eq(
      {
        :sender=>"Tiffany",
        :message=>"Hi back",
        :timestamp=>Date.today
      })
  end

  it 'can provide a history of messages between users' do
    @chat.new_message('Hi there', @user_one)
    @chat.new_message('Hi back', @user_two)
    expect(@chat.messages).to eq(
      [
        {
          :sender=>"Jordan",
          :message=>"Hi there",
          :timestamp=>Date.today
        },
        {
          :sender=>"Tiffany",
          :message=>"Hi back",
          :timestamp=>Date.today
        }
      ])
  end
end



# @user_one = 'Jordan'
# @user_two = 'Tiffany'
# @chat = Chat.new(user_1: @user_one, user_2: @user_two)
# @chat.new_message('Hi there', @user_one)
# @chat.new_message('Hi back', @user_two)
# @chat.messages