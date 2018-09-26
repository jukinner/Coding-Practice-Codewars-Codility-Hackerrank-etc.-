# Always Sorted Object Exercise in Ruby
# In this guide you will learn how to assign a position of 1 for the first object added to an Array.
# Summary
# Build out a method that will describe a sorted object.

# Exercise Description
# "Define a method that will describe a sorted object and assign it a position of 1 for the first object added to the array."


require 'rspec'

def position_enforcer(bucket, *args)
  bucket = bucket.sort_by { |x| x[:position] }
  args.each { |x|
    x.store(:position, bucket.length + 1) if x[:position] == nil
    bucket.insert(x[:position] - 1, x)
    }
  i = 1
  bucket.compact.map {|x| 
    x[:position] = i
    i += 1
  }
  bucket.compact
end

describe 'always sorted object' do
  it 'assigns a position of 1 for the first object added to the array' do
    array_of_objects = []

    expect(
      position_enforcer(
        array_of_objects,
        { name: 'Robert Shun' }
      )
    ).to eq(
      [
        { name: 'Robert Shun', position: 1 }
      ]
    )
  end


  it 'takes in an array of objects that each contain a position attribute and ensures that it is always sorted properly' do
    array_of_objects = [
      { name: 'Benjamin Haribert', position: 1 },
      { name: 'Ranjit Asclepius', position: 2 },
      { name: 'Mansoor Ragnvald', position: 3 },
    ]

    expect(
      position_enforcer(
        array_of_objects,
        { name: 'Robert Shun' }
      )
    ).to eq(
      [
        { name: 'Benjamin Haribert', position: 1 },
        { name: 'Ranjit Asclepius', position: 2 },
        { name: 'Mansoor Ragnvald', position: 3 },
        { name: 'Robert Shun', position: 4 }
      ]
    )
  end

  it 'auto resorts the position values for an array of objects with the position attribute' do
    array_of_objects = [
      { name: 'Benjamin Haribert', position: 1 },
      { name: 'Ranjit Asclepius', position: 2 },
      { name: 'Mansoor Ragnvald', position: 3 },
    ]

    expect(
      position_enforcer(
        array_of_objects,
        { name: 'Robert Shun', position: 2 }
      )
    ).to eq(
      [
        { name: 'Benjamin Haribert', position: 1 },
        { name: 'Robert Shun', position: 2 },
        { name: 'Ranjit Asclepius', position: 3 },
        { name: 'Mansoor Ragnvald', position: 4 },
      ]
    )
  end
end
