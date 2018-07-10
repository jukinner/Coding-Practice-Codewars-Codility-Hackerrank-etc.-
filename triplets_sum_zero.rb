require 'rspec'

class Array
  def triplet_sum_zero
    new_array = Array.new
    options = self.permutation(3).to_a.map { |x| x.sort }.uniq.each do |x|
      if x.inject(&:+) == 0
      new_array << x
      end
    end
    p new_array
  end
end

describe 'Triplet sum zero' do
  it 'returns arrays of all combinations of triplets that sum equals 0' do
    arr_one = [0, -1, 2, -3, 1]
    arr_two = [1, -2, 1, 0, 5]

    expect(arr_one.triplet_sum_zero).to eq([[0, -1, 1], [2, -3, 1]])
    expect(arr_two.triplet_sum_zero).to eq([[1, -2, 1]])
  end
end
