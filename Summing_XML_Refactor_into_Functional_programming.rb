# Refactoring an Iterative XML Parser to Use Functional Programming in Ruby
# In the last guide I implemented an XML parser that counted all of the lines from Shakespeare's Macbeth play. That implementation worked, however it used an iterative approach, which resulted in a highly coupled method that would only be able to work on another XML file if it had an identical structure and set of tag names. In this guide we're going to refactor the solution to utilize a functional approach.
# Summary
# Refactor the Macbeth XML parser/counter so it uses a functional programming approach.

# Credit to Upcase for the great coding exercise.

# Exercise File
# Code File

# Exercise Description
# Split the macbeth_parser method into multiple methods that utilize functional programming calls instead of the iterative approach. The RSpec tests should still pass, which means that the resulting output should be identical to the current implementation.
require 'rspec'
require 'active_support/core_ext/hash'
# Iterative Approach-one way to do it but not as scaleable

# def macbeth_counter
#   xml_data = File.open('support/macbeth.xml')
#   hash = Hash.from_xml(xml_data)

#   counter_hash = Hash.new { |h, k| h[k] = 0 }

#   hash['PLAY']['ACT'].each do |k, v|
#     k['SCENE'].each do |k2, v2|
#       k2['SPEECH'].each do |k3, v3|
#         counter_hash[k3['SPEAKER']] += Array(k3['LINE']).count
#       end
#     end
#   end

#   counter_hash
# end


# second way to do this-functional---- THIS IS MORE SCALEABLE BECAUSE IT CAN BE USED ON DIFFERENT XML VERSIONS. THE OTHER ONE CAN ONLY WORK WITH THE STRUCTURE OF THE MACBETH XML DOCUMENT
# 1) create an enumerator-this allows you to call enumerator methods on top of this. When we unwrap the xml, we can do more than just iterate through it. 
def macbeth_counter
  xml_data = File.open("macbeth.xml")
  unwrap_xml(xml_data).
    group_by { |speaker, _| speaker }.
    transform_values {|value| value.map(&:last).inject(:+) }
end

def unwrap_xml(data)
  Enumerator.new do |y|
    Hash.from_xml(data)['PLAY']['ACT'].each do |k|
      k['SCENE'].each do |k2|
        k2['SPEECH'].each do |k3|
          y << [k3['SPEAKER'], Array(k3['LINE']).count]
        end
      end
    end
  end
end

describe 'XML counter' do
  it 'can count the lines in macbeth for each character' do
    expect(macbeth_counter['ROSS']).to eq(135)
    expect(macbeth_counter['FLEANCE']).to eq(2)
    expect(macbeth_counter['MACBETH']).to eq(718)
  end

  it 'produces a full line count for each character' do
    expect(macbeth_counter).to eq(
      {"First Witch"=>62,
       "Second Witch"=>27,
       "Third Witch"=>27,
       "ALL"=>24,
       "DUNCAN"=>70,
       "MALCOLM"=>212,
       "Sergeant"=>35,
       "LENNOX"=>73,
       "ROSS"=>135,
       "MACBETH"=>718,
       "BANQUO"=>113,
       "ANGUS"=>21,
       "LADY MACBETH"=>265,
       "Messenger"=>23,
       "FLEANCE"=>2,
       "Porter"=>46,
       "MACDUFF"=>180,
       ["MACBETH", "LENNOX"]=>1,
       "DONALBAIN"=>10,
       "Old Man"=>11,
       "ATTENDANT"=>1,
       "First Murderer"=>30,
       "Second Murderer"=>15,
       "Both Murderers"=>2,
       "Servant"=>5,
       "Third Murderer"=>8,
       "Lords"=>3,
       "HECATE"=>39,
       "Lord"=>21,
       "First Apparition"=>2,
       "Second Apparition"=>4,
       "Third Apparition"=>5,
       "LADY MACDUFF"=>41,
       "Son"=>20,
       "Doctor"=>45,
       "Gentlewoman"=>23,
       "MENTEITH"=>12,
       "CAITHNESS"=>11,
       "SEYTON"=>5,
       "SIWARD"=>30,
       "Soldiers"=>1,
       "YOUNG SIWARD"=>7}
    )
  end
end