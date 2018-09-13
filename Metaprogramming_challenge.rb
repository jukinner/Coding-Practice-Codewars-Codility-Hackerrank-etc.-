# Metaprogramming in Ruby
# In this guide you will learn how to use metaprogramming to allow for dynamic method calls.
# Summary
# Build out a method that will use meta programming to allow for dynamic method calls.

# Exercise description
# "Define a method that will use meta programming to allow for dynamic method calls starting with hi."

# Example Data
# 'expect(@mh.respond_to?(:hi_jon)).to eq(true)
# expect(@mh.respond_to?(:hi_jane)).to eq(true)'
# Real World Usage
# Metaprogramming is used in Ruby in pretty much everything and
# this will help you understand more about it and the many thing you can do with it.

require 'rspec'

class MetaHi

	def greeting(name)
		greeting = name.split("_").map do |x|
			change = x.split("")[0].upcase
			x.split("")[1..-1].unshift(change).join
		end 
		greeting.join(" ") + "!"
	end

	def method_missing(method_name, *arguments, &block)
		if method_name.to_s =~ /hi_(.*)/
			greeting(method_name.to_s)
		else
			super
		end
	end

	def respond_to_missing?(name, include_private = false)
		name.to_s.start_with?("hi_") || super
	end
end

# @mh = MetaHi.new
# p @mh.respond_to?(:hi_jon)
# p @mh.hi_jon

describe "MetaHi" do
  before do
    @mh = MetaHi.new
  end

  it 'uses meta programming to allow for dynamic method calls starting with hi_' do
    expect(@mh.respond_to?(:hi_jon)).to eq(true)
    expect(@mh.respond_to?(:hi_jane)).to eq(true)
  end

  it 'returns a greeting based on the name provided by the method' do
    expect(@mh.hi_jon).to eq('Hi Jon!')
    expect(@mh.hi_kristine).to eq('Hi Kristine!')
    expect(@mh.hi_gabrielle).to eq('Hi Gabrielle!')
  end
end

# class Author
#   attr_accessor :first_name, :last_name, :genre

#   def author
#     OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
#   end

#   def method_missing(method_name, *arguments, &block)
#     if method_name.to_s =~ /author_(.*)/
#       author.send($1, *arguments, &block)
#     else
#       super
#     end
#   end
# end


# class NullClass
#   def method_missing(name, *args, &block)
#     self
#   end

#   def respond_to_missing?(name, include_private = false)
#     name.to_s || super
#   end
# end