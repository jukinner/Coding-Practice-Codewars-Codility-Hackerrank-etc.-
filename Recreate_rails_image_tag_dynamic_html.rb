# Replicate the Rails image_tag Method in Ruby
# This exercise asks you to replicate the functionality of the popular image_tag method provided by the Ruby on Rails framework.
# Summary
# Build a program that replicates the functionality of the image_tag method provided by the Ruby on Rails framework.

# Exercise Description
# The method should be able to dynamically generate an HTML image tag. Specifically it needs to be able to take in any number of arguments and integrate the arguments and their values as elements contained in the generated image tag.

# Examples
# @image_path = "https://devcamp.com/some_pic.jpg"
# image_tag(@image_path)) # "<img src='https://devcamp.com/some_pic.jpg'>"
# image_tag(@image_path, width: 42)) # "<img src='https://devcamp.com/some_pic.jpg' width='42'>"
# image_tag(@image_path, alt: "My Image") # "<img src='https://devcamp.com/some_pic.jpg' width='42' alt='My Image'>"
# Real World Usage
# This process is utilized extensively when it comes to building view helper methods in Rails applications. If you work in Rails based applications you will encounter many situations when you need to dynamically generate HTML code.

require 'rspec'

def image_tag link, *args
	answer = ""
  args[0].each_pair { |key, value| answer << " #{key}='#{value}'"} if args[0] != nil
	"<img src='#{link}'#{answer}>"
end

@image_path = "https://devcamp.com/some_pic.jpg"
# image_tag(@image_path, width: 42)
# image_tag(@image_path, width: 42, alt: "My Image")
image_tag(@image_path)

describe 'Cloned image_tag' do
  before do
    @image_path = "https://devcamp.com/some_pic.jpg"
  end

  it 'generates an HTML link' do
    expect(image_tag(@image_path)).to eq("<img src='https://devcamp.com/some_pic.jpg'>")
  end

  it 'generates an HTML link and can optionally take a width' do
    expect(image_tag(@image_path, width: 42)).to eq("<img src='https://devcamp.com/some_pic.jpg' width='42'>")
  end

  it 'generates an HTML link and can optionally take an alt tag' do
    expect(image_tag(@image_path, width: 42, alt: "My Image")).to eq("<img src='https://devcamp.com/some_pic.jpg' width='42' alt='My Image'>")
  end

  it 'generates an HTML link and can optionally take any type of attribute tag' do
    random = rand 100
    expect(image_tag(@image_path, random_value: random)).to eq("<img src='https://devcamp.com/some_pic.jpg' random_value='#{random}'>")
  end
end