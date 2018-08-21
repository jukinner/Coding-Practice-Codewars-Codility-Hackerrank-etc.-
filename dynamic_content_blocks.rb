# Using Blocks to Dynamically Format Content in Ruby
# This coding exercise will test your knowledge of how to use blocks in Ruby. Specifically, we'll walk through how to build a method that can take in a block as an argument and output an array of formatted values.
# Summary
# Build a method that can accept an array and a block as arguments and return an array of formatted elements.

# Exercise Description
# Given the following array:

# @players = ['Altuve', 'Correa', 'Bregman']
# Build a method that can generate formatted content, such as:

# ["1. Altuve", "2. Correa", "3. Bregman"]
# ["<p>1</p> <div>Altuve</div>", "<p>2</p> <div>Correa</div>", "<p>3</p> <div>Bregman</div>"]
# ["<li>Altuve</li>", "<li>Correa</li>", "<li>Bregman</li>"]

# Real World Usage
# This is a common requirement in Rails development when building view helper methods. Imagine a scenario like the ones mentioned above where you have a list of data elements and you need to dynamically generate HTML tags for each component. This is a powerful tool to have in your coding arsenal.


require 'rspec'

describe 'Lineup Generator' do
  before do
    @players = ['Altuve', 'Correa', 'Bregman']
  end

  it 'can build a list driven lineup' do
    lineup = lineup_generator(@players) { |x, y| "#{x}. #{y}" }
    expect(lineup).to eq(["1. Altuve", "2. Correa", "3. Bregman"])
  end

  it 'can build an HTML driven lineup' do
    lineup = lineup_generator(@players) { |x, y| "<p>#{x}</p> <div>#{y}</div>" }
    expect(lineup).to eq(["<p>1</p> <div>Altuve</div>", "<p>2</p> <div>Correa</div>", "<p>3</p> <div>Bregman</div>"])
  end

  it 'can build an HTML ul driven lineup' do
    lineup = lineup_generator(@players) { |x, y| "<li>#{y}</li>" }
    expect(lineup).to eq(["<li>Altuve</li>", "<li>Correa</li>", "<li>Bregman</li>"])
  end
end
