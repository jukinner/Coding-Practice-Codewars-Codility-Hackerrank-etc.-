require 'rspec'

def num_counter(arr)
  answer = Hash.new
  arr.each { |x| answer[x] = arr.count(x) }
  return answer
end
# arr = [1, 4, 1, 3, 2, 1, 4, 5, 4, 4, 5, 4]
# num_counter(arr)

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