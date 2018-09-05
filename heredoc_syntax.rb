# How to Use Indention with Multiline Strings with the Squiggly Heredoc Syntax
# Working with multiline strings in Ruby used to result in very odd looking code because heredocs required that you shift all of the string code so it was flush against the left hand side of the file. However, with modern versions of Ruby you are now able to utilize the squiggly heredoc syntax, which allows you to indent multiline strings in a file.
# Summary
# Refactor a multiline string in Ruby so that it can be indented.

# Exercise Description
# Given a multiline string, stored in a Ruby Heredoc, refactor it so that you can indent the string instead of having it flushed to the left-hand side of the file.

# Standard Heredoc Example
# <<~EOL
#   Some
#   words
#   in a heredoc
# EOL

# # Results in:
#   Some
#   words
#   in a heredoc
# # Notice the spaces on the left hand side of the text
# Required Output
# Some
# words
# in a heredoc


require 'rspec'

def heredoc_refactor
  <<~EOL
    Some
    words
    in a heredoc
  EOL
end

puts heredoc_refactor

describe 'Heredoc refactor' do
  it 'does not have leading spaces on each line' do
    expect(heredoc_refactor).to eq("Some\nwords\nin a heredoc\n")
  end
end