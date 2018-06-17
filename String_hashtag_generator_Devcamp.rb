require 'rspec'

# my Answer
class String
  def hashtag_generator
    split(" ").map {|e| "#" + e}.join(" ")
  end
end

describe 'Hashtag generator' do
  it 'takes in a string and converts each word into a hashtag' do
    str = 'fun words that need to be hashtags'
    expect(str.hashtag_generator).to eq('#fun #words #that #need #to #be #hashtags')
  end
end

# str = 'fun words that need to be hashtags'
# p str.split(" ").map {|e| "#" + e}.join(" ")