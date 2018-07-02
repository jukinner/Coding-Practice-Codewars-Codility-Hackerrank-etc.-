# Build a File Type Hash Mapper in Ruby
# Whether it's a complex coding interview question or algorithm implementation, there are many times where you will be asked to combine a large number of processes into a single feature. In this guide we'll examine how to build a non-trivial program that takes in an array of file names and generates a hash collection where each file type is the key and the value is an array of their respective file names.
# Summary
# Build a method that takes in an array of file names and filters them into an organized hash.

# Exercise Description
# Given an array of file names (with file extensions), build a method that splits the array into a hash where the keys are the file types and the values are arrays that contain the file name.

# Example
# file_names = %w{file1.rb file2.html file3.rb file4.rb file5.js}

# # Result should be:
# {
#   'rb' => ['file1', 'file3', 'file4'],
#   'html' => ['file2'],
#   'js' => ['file5']
# }


# require 'rspec'

# class Array
#   def file_type_mapper
#     answer = Hash.new
#     each do |x|
#       if answer.include?(x.split(".")[1])
#       else
#         answer["#{x.split(".")[1]}"]
#     end
#   end


# end

# another way- because the hash has to have empty arrays as its values, by default, you have to do this specifically one way. You have to tell it a structure right away. 
class Array
  def file_type_mapper
    each_with_object(Hash.new { |h, k| h[k] = [] }) do | file, hash |
      file_ext = File.extname(file)[1..-1]
      hash[file_ext] = hash[file_ext].push(file.chomp!("." + file_ext))
    end
  end
end

# each with object takes a block. First item is the element you are iterating over, the second is the hash
# LEARNING SECTION
# You can actually create a new hash and tell it the structure right away. 
# h = Hash.new { |h, k| h[k] = [] }
# # then to add things to it you could do
# h[:some_key] << 1 
# p h
# h[:some_key] << 2
# p h
# prints
# {:some_key=>[1]}
# {:some_key=>[1, 2]}

describe 'File selector' do
  it 'converts an array of file names into a hash where each file type is the key and the name(s) are in an array for the value' do
    file_names = %w{file1.rb file2.html file3.rb file4.rb file5.js}
    expect(file_names.file_type_mapper).to eq({
                                              'rb' => ['file1', 'file3', 'file4'],
                                              'html' => ['file2'],
                                              'js' => ['file5']
                                              })
  end
end


# file_names = %w{file1.rb file2.html file3.rb file4.rb file5.js}
# answer = Hash.new("")
# p answer
# file_names.each do |x|
#   if answer.include?(x.split(".")[1])
#     answer{"#{x.split(".")[1]}"} = 
#   else
#   end
# end
# p answer