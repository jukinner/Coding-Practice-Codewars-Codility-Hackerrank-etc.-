require 'rspec'


def sequence_sum(begin_num, end_num, inc)
  x, sum = begin_num, 0
  return 0 if begin_num > end_num
	while x <= end_num
		sum += x
		x += inc
	end
	p sum	
end

describe 'sequence sum' do
	it "can handle sdifferent increments and values" do
		expect(sequence_sum(sequence_sum(2, 6, 2)).to eq (12)
		expect(sequence_sum(sequence_sum(1, 5, 3)).to eq (5)
		expect(sequence_sum(sequence_sum(0, 15, 3)).to eq (45)
		expect(sequence_sum(sequence_sum(16, 15, 3)).to eq (0)
		expect(sequence_sum(sequence_sum(2, 24, 22)).to eq (26)
	end
end

describe 'Mod Checker' do   
 it 'returns the first value divisible by 12 and 16' do 
   expect(mod_checker(1..200, 12, 16)).to eq (48)
   expect(mod_checker(1..120000, 200, 73)).to eq(14600)
 end
end
