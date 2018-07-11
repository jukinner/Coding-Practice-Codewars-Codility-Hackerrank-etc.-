# Summary
# Parse multiple markdown files and group URLs by keywords.

# Exercise Description
# Inside of multiple markdown files, you will find three types of URLs:

# rails.devcamp.com URLs that contain the word campsite in the URL string
# rails.devcamp.com URLs that don't have the word campsite in the URL string
# URLs that are not located on rails.devcamp.com
# In order to successfully complete this exercise, you will need to ignore all of the non rails.devcamp.com URLs, and then group the other two types of URLs into their own nested hashes. Additionally, the markdown files have headings for each day. Utilize the humanize gem so that each day is its own key.

require 'rspec'

def url_matcher
  %r{
    \b
    (
      (?: [a-z][\w-]+:
       (?: /{1,3} | [a-z0-9%] ) |
        www\d{0,3}[.] |
        [a-z0-9.\-]+[.][a-z]{2,4}/
      )
      (?:
       [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
      )+
      (?:
        \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
        [^\s`!()\[\]{};:'".,<>?«»“”‘’]
      )
    )
  }ix
end

def content
  c = File.read('support/march_28_markdown_one.md')
  c << File.read('support/march_28_markdown_two.md')
  c << File.read('support/march_28_markdown_three.md')
  c << File.read('support/march_28_markdown_four.md')
  c
end

def syllabus_parser
  master_hash = Hash.new

  sections = content.split(/\#\#\#/)

  sections.each_with_index do |section, idx|
    master_hash[idx.humanize] = section.
                                  scan(url_matcher).
                                  flatten.
                                  compact.
                                  keep_if { |url| url =~ /rails.devcamp.com/ }.
                                  each_with_object(Hash.new { |h, k| h[k] = [] }) { |e, hash| e =~ /campsites/ ? (hash[:campsite] << e) : (hash[:guide] << e) }
  end

  master_hash
end

describe 'markdown_parser' do
  it 'parses a markdown file and groups elements into categories' do
    three = {
      :guide=>
        [
          "https://rails.devcamp.com/daily-ruby-code-practice-exercises/december/create-array-converter-method-ruby",
          "https://rails.devcamp.com/html-css-coding-bootcamp/guide-html/creating-page-components-div-tag",
          "https://rails.devcamp.com/html-css-coding-bootcamp/guide-html/implementing-inline-components-span-tag",
          "https://rails.devcamp.com/html-css-coding-bootcamp/guide-html/html-headings",
          "https://rails.devcamp.com/html-css-coding-bootcamp/guide-html/multi-line-content-paragraph-tags",
          "https://rails.devcamp.com/html-css-coding-bootcamp/guide-html/html-hyperlinks",
          "https://rails.devcamp.com/html-css-coding-bootcamp/guide-html/page-breaks-horizontal-rule-tag",
          "https://rails.devcamp.com/html-css-coding-bootcamp/guide-html/line-breaks-html-pages"
        ],
      :campsite=>
        [
          "http://rails.devcamp.com/trails/dissecting-rails-5/campsites/implementing-version-control",
          "https://rails.devcamp.com/trails/ruby-programming/campsites/ruby-variables"
        ]
    }

    seven = {
      :guide=>
        [
          "https://rails.devcamp.com/daily-ruby-code-practice-exercises/december/converting-hash-url-friendly-string-ruby",
          "https://rails.devcamp.com/html-css-coding-bootcamp/guide-html/html-ids",
          "https://rails.devcamp.com/html-css-coding-bootcamp/guide-html/html-classes"
        ],
      :campsite=>
        [
          "https://rails.devcamp.com/trails/dissecting-rails-5/campsites/rails-5-authentication",
          "https://rails.devcamp.com/trails/ruby-programming/campsites/ruby-methods"
        ]
    }

    expect(syllabus_parser['three']).to eq(three)
    expect(syllabus_parser['seven']).to eq(seven)
  end
end