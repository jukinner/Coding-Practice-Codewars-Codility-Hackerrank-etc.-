# Convert an Array of File Require Statements into File Names
# When building scripts, it's a common requirement to remove and update multiple items in a collection of strings. In this guide we're going to mimic the process needed to take a list of require statements and generate a list of file names.
# Summary
# Implement a method that generates a list of file names based on a collection of require statements.

# Exercise File
# Code File

# Exercise Description
# Build a method that takes in an array of require statements and outputs an array of the file names with their JavaScript extension added.

# Example
# javascript_files = [
#   '//= require custom/scripts',
#   '//= require base/defaults',
#   '//= require html.sortable',
#   '//= require moment',
#   '//= require test-styles'
# ]

# append_js_file_extension javascript_files

# # Output
# [
#   'custom/scripts.js',
#   'base/defaults.js',
#   'html.sortable.js',
#   'moment.js',
#   'test-styles.js'
# ]

require 'rspec'

# first pass
def append_js_file_extension files  
  p files.map { |e| e.slice!(12..-1) + ".js"}
end

# alternate way
# def append_js_file_extension required_files
#   required_files.map do |file|
#     file.gsub(/\/\/= require /, '')
#   end.map do |f|
#     f + '.js'
#   end
# end

describe 'JavaScript file extension' do
  it 'converts require statements to javascript file name' do
    javascript_files = [
      '//= require custom/scripts',
      '//= require base/defaults',
      '//= require html.sortable',
      '//= require moment',
      '//= require test-styles'
    ]
    expect(append_js_file_extension javascript_files).to eq([
                                                              'custom/scripts.js',
                                                              'base/defaults.js',
                                                              'html.sortable.js',
                                                              'moment.js',
                                                              'test-styles.js'
                                                            ])
  end
end



