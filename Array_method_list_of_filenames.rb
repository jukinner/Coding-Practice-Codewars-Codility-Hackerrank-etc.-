# Build an Array Method that Returns a List of Filenames for Specific File Types
# Parsing file types can be a complex process. However, by leveraging the grep method you can leverage regular expressions to quickly return a full list of all of the file types that you're searching for.
# Summary
# Build a method that searches for specific file types.

# Exercise Description
# Add a method to the Array class that can look through an array of file names and return a filtered array with the file names for the file type searched for.

# Example
# file_names = %w{file1.rb file2.html file3.rb file4.rb file5.js}
# file_names.file_selector 'rb' # => ['file1', 'file3', 'file4']


require 'rspec'

class Array
  def file_selector ext
    select { |x| x.include?(ext)}.map {|r| r.chomp("." + ext)}
  end
end

# describe 'File selector' do
#   it 'returns the ruby file names from an array of file names' do
#     file_names = %w{file1.rb file2.html file3.rb file4.rb file5.js}
#     expect(file_names.file_selector 'rb').to eq(['file1', 'file3', 'file4'])
#   end
# end

file_names = %w{file1.rb file2.html file3.rb file4.rb file5.js}
p file_names.file_selector 'rb'
