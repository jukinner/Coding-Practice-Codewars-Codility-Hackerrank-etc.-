# Content Shuffler in Ruby
# In this guide you will learn how to shuffle text based content and splits it by section length and delimeters.
# Summary
# Build out a class that can be used to sort out content and splits it by length.

# Exercise Description
# "Define a class that will sort content and shuffle text based content and split it by section length and delimiters"

# Example Data
# 'content = <<~EOL
#       Chuck Norris doesn't delete files, he blows them away.
#       Chuck Norris' addition operator doesn't commute; it teleports to where he needs it to be.
#       Chuck Norris doesn't have performance bottlenecks. He just makes the universe wait its turn.
#       Whiteboards are white because Chuck Norris scared them that way.
#       No statement can catch the ChuckNorrisException.
#       Chuck Norris can recite π. Backwards.
#       When Chuck Norris gives a method an argument, the method loses.
#       Chuck Norris's first program was kill -9.
#       Chuck Norris doesn't get compiler errors, the language changes itself to accommodate Chuck Norris.
#     EOL

#     srand 1
#     sc = ContentSorter.new(content.gsub("\n", '')).shuffled_content'
# Real World Usage
# It will help you specify the boundary between separate, independent regions in plain text or other data streams.

require 'rspec'

class ContentSorter
  def initialize(string)
    @delimiters = %w{, . ;}
    @string = string
  end

  def shuffled_content
    section = []

    split_array = @string.chars.each_with_object([]) do |e, arr|
      section << e
      if @delimiters.include?(e) && section.count > 20
        arr << section.join
        section.clear
      end
    end
    split_array
  end
end


describe ContentSorter do
  it 'shuffles text based content and splits it by section length and delimiters' do
    content = <<~EOL
      Chuck Norris doesn't delete files, he blows them away.
      Chuck Norris' addition operator doesn't commute; it teleports to where he needs it to be.
      Chuck Norris doesn't have performance bottlenecks. He just makes the universe wait its turn.
      Whiteboards are white because Chuck Norris scared them that way.
      No statement can catch the ChuckNorrisException.
      Chuck Norris can recite π. Backwards.
      When Chuck Norris gives a method an argument, the method loses.
      Chuck Norris's first program was kill -9.
      Chuck Norris doesn't get compiler errors, the language changes itself to accommodate Chuck Norris.
    EOL

    srand 1
    sc = ContentSorter.new(content.gsub("\n", '')).shuffled_content

    expected_result = ["Chuck Norris doesn't delete files,", " he blows them away.Chuck Norris' addition operator doesn't commute;", " it teleports to where he needs it to be.", "Chuck Norris doesn't have performance bottlenecks.", " He just makes the universe wait its turn.", "Whiteboards are white because Chuck Norris scared them that way.", "No statement can catch the ChuckNorrisException.", "Chuck Norris can recite \u03C0.", " Backwards.When Chuck Norris gives a method an argument,", " the method loses.Chuck Norris's first program was kill -9.", "Chuck Norris doesn't get compiler errors,", " the language changes itself to accommodate Chuck Norris."]

    expect(sc).to eq(expected_result)
  end
end