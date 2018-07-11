# Generate All Binary Strings from Given Pattern in Ruby
# This guide walks through how to generate all binary strings that can be formed by replacing each wildcard character with a either a '0' or '1'.
# Summary
# Implement a method that returns all potential permutations of a given pattern after replacing wildcard characters with '0' or '1'.

# Exercise Description
# Given a pattern, create a method that generates all possible binary strings by replacing question mark elements with '0' or '1'.

# Examples
# str = "1??0?101"
# binary_swapper = BinarySwapper.new(binary_string: "1??0?101") => # '0', '1'
# # => 
#   [
#      '10000101',
#      '10001101',
#      '10100101',
#      '10101101',
#      '11000101',
#      '11001101',
#      '11100101',
#      '11101101'
#    ]

# binary_swapper = BinarySwapper.new(binary_string: "01??") => # '0', '1'
# # =>
#   [
#     '0100',
#     '0101',
#     '0110',
#     '0111'
#   ]
# Real World Usage
# Although there is a fairly simple solution, this exercise forces you to generate a method that swaps out and replaces unknown values with a '0' or '1' and then returns a list of all the possible permutations of that certain binary string. This could come in handy when given much larger patterns or strings. You would just need to implement the same actions and it would produce the correct list of outcomes.

require 'rspec'
# my attempt
class BinarySwapper
  def initialize binary_string
    @binary_string = binary_string
  end

  def binary_question_mark_filler


  end
end

# another option
class BinarySwapper
  def initialize(binary_string:)
    @str = binary_string
  end

  def number_of_question_marks
    @str.scan(/\?/).count
  end

  def combination_of_binary_nums
    ['0', '1'].repeated_permutation(number_of_question_marks).to_a
  end

  def indices_of_question_marks
    @str.enum_for(:scan, /\?/).map { Regexp.last_match.begin(0) }
  end

  def binary_question_mark_filler
    indices = indices_of_question_marks
    combination_of_binary_nums.each_with_object([]) do |combination, arr|
      indices.each_with_index do |str_index, idx|
        @str[str_index] = combination[idx]
      end

      arr << @str.clone
    end
  end
end

describe 'Generate all binary strings from given pattern' do
  it 'returns an array of strings with all of the potential permutations of the question mark elements filled in with 0 or 1' do
    binary_swapper = BinarySwapper.new(binary_string: "1??0?101")

    expect(binary_swapper.binary_question_mark_filler).to eq( [
                                                      '10000101',
                                                      '10001101',
                                                      '10100101',
                                                      '10101101',
                                                      '11000101',
                                                      '11001101',
                                                      '11100101',
                                                      '11101101'
                                                    ])
  end

  it 'works on binary strings of different sizes' do
    binary_swapper = BinarySwapper.new(binary_string: "01??")

    expect(binary_swapper.binary_question_mark_filler).to eq( [
                                                      '0100',
                                                      '0101',
                                                      '0110',
                                                      '0111'
                                                    ])
  end
end