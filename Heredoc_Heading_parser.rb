# February 20 - Markdown Heading Parser in Ruby with Heredocs

require 'rspec'

def markdown_heading_parser content
  content.gsub(/^.*#.*/) { |heading | "<h1>#{heading[2..-1]}</h1>"}
end

# (/^.*#.*/) is looking for all of the lines where the hashtag is used. 
# when passing a block to gsub, it allows you to wrap all of the matches in anything that we want. 


describe 'Markdown heading parser' do
  it 'Converts a heredoc string to markdown headings' do
content = <<-EOF
# Hey there

Some content

# Another heading

More content
EOF

    expect(markdown_heading_parser content).to eq("<h1>Hey there</h1>\n\nSome content\n\n<h1>Another heading</h1>\n\nMore content\n")

  end
end
