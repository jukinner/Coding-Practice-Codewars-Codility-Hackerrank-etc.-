# Build a Prefix Notation Calculator in Ruby
# Building a calculator is a popular interview question and a good approach for learning a programming language. In this guide we're going to build a Prefix Notation calculator in Ruby, which enables users to enter an operator, followed by any set of numbers to calculate.
# Summary
# Build a Prefix Notation Calculator in Ruby.

# Exercise Description
# Build a method that performs addition, subtraction, multiplication, and division on any number of values passed to the method. Additionally, ensure to handle improperly entered requests (bonus points if you build your own error handling class).

# Example Input/Output
# pn_calculator "+ 0 5 1 9 11"  # => 26
# pn_calculator "- 10 200"      # => -190
# pn_calculator "* 2 2"         # => 4
# pn_calculator "/ 0 5 1 9 11"  # => 0.0
# pn_calculator("* 10 b").to_s  # => "Values need to be integers"
# pn_calculator("l 0 5").to_s   # => "Operator is not valid, needs to be +, -, *, /"



require 'rspec'

# my first attempt
# class String
#   def is_i?
#      !!(self =~ /\A[-+]?[0-9]+\z/)
#   end
# end

# def pn_calculator array
#   operation = array.split(" ")
#   p operation
#   acceptable = ["+", '-', '*', '/']
#   empty = []
#   if acceptable.include?(operation[0]) == false
#     p "Operator is not valid, needs to be +, -, *, /"
#   elsif 
#     operation[1..-1].each do |x|
#       if x.is_i? == false
#         p "Values need to be integers"
#         break
#       end
#     end
#   else 
#     p operation
#     operation.slice!(1..-1).map { |x| empty << x.to_i }
#     p empty
#     p empty.inject(&operation[0].to_sym)
#   end
# end


# another way to do this
def pn_calculator str
  values = str.split
  operator = values.shift

  begin
    raise PNError.new('Values need to be integers') unless values_are_integers? values
    raise PNError.new('Operator is not valid, needs to be +, -, *, /') unless operator_is_valid? operator
  rescue PNError => e
    return e
  end

  eval values.map(&:to_f).join(operator)
end

def values_are_integers? arr
  arr.map do |i|
    return false if (i =~ /[0-9]/) == nil
  end
end

def operator_is_valid? op
  %w{+ - * /}.include? op
end

class PNError < StandardError
  def initialize(msg = "PN Error")
    super(msg)
  end
end

describe 'Prefix notation calculator' do
  it 'can perform addition' do
    expect(pn_calculator "+ 2 2").to eq(4)
    expect(pn_calculator "+ 10 200").to eq(210)
    expect(pn_calculator "+ 0 5 1 9 11").to eq(26)
  end

  it 'can perform subtraction' do
    expect(pn_calculator "- 2 2").to eq(0)
    expect(pn_calculator "- 10 200").to eq(-190)
    expect(pn_calculator "- 0 5 1 9 11").to eq(-26)
  end
  
  it 'can perform multiplication' do
    expect(pn_calculator "* 2 2").to eq(4)
    expect(pn_calculator "* 10 200").to eq(2000)
    expect(pn_calculator "* 0 5 1 9 11").to eq(0)
  end

  it 'can perform division' do
    expect(pn_calculator "/ 2 2").to eq(1.0)
    expect(pn_calculator "/ 10 200").to eq(0.05)
    expect(pn_calculator "/ 0 5 1 9 11").to eq(0.0)
  end

  it 'returns an error if integers are not provided' do
    expect(pn_calculator("+ * 5").to_s).to eq("Values need to be integers")
    expect(pn_calculator("* 10 b").to_s).to eq("Values need to be integers")
  end

  it 'returns an error if a proper operator is not provided' do
    expect(pn_calculator("l 0 5").to_s).to eq("Operator is not valid, needs to be +, -, *, /")
    expect(pn_calculator("x 0 5").to_s).to eq("Operator is not valid, needs to be +, -, *, /")
  end
end
# p "*".is_integer?
# pn_calculator "/ 2 2"
# pn_calculator("l 0 5")
# pn_calculator "/ 2 2"
# pn_calculator "- 2 2"
# pn_calculator "+ 5 *"

# arr = [1,2,3]
# symo = "+"
# p symo.to_sym
# p arr.inject(&symo.to_sym)