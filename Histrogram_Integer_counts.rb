require 'rspec'

def num_counter(arr)
  answer = Hash.new
  arr.each { |x| answer[x] = arr.count(x) }
  return answer
end
# arr = [1, 4, 1, 3, 2, 1, 4, 5, 4, 4, 5, 4]
# num_counter(arr)  

# Jordan's answer
# Whenever using inject and passing it a block, the first value is the incrementer value(hash in this case), next one is the element we are iterating over). the first thing when adding to a hash is to call it. in this case, all we are doing is iterating the value count of the the key, by 1, then you HAVE to return the hash at teh end of the block so the hash method is not reset. 
def num_counter(arr)
  arr.inject(Hash.new(0)) do |hash, e|
    hash[e] += 1
    hash
  end
end

describe 'Number counter' do
  it 'returns a hash that contains the number of occurrences for each array element' do
    arr = [1, 4, 1, 3, 2, 1, 4, 5, 4, 4, 5, 4]
    expect(num_counter(arr)).to eq(
                                    {
                                      1=>3,
                                      4=>5,
                                      3=>1,
                                      2=>1,
                                      5=>2
                                    }
                                  )
  end
end