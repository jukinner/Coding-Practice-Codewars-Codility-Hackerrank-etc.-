# Create a method that builds a breadcrumb based navigation.

# Exercise Description
# Given an array of strings, build a method that converts the strings into a single string where each element is separated by a /.


require 'rspec'

def breadcrumb_generator input
  input.join(" / ")
end



describe 'Breadcrumb generator' do
  it 'converts an array of strings to breadcrumb' do
    items = ['String 1', 'String 2', 'String 3']
    expect(breadcrumb_generator items).to eq('String 1 / String 2 / String 3')
  end
end

