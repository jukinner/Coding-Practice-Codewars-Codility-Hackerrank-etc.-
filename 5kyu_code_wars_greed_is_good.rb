# Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

#  Three 1's => 1000 points
#  Three 6's =>  600 points
#  Three 5's =>  500 points
#  Three 4's =>  400 points
#  Three 3's =>  300 points
#  Three 2's =>  200 points
#  One   1   =>  100 points
#  One   5   =>   50 point
# A single die can only be counted once in each roll. For example, a "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.

# Example scoring

#  Throw       Score
#  ---------   ------------------
#  5 1 3 4 1   50 + 2 * 100 = 250
#  1 1 1 3 1   1000 + 100 = 1100
#  2 4 4 5 4   400 + 50 = 450

require 'rspec'

@scores = { [1,1,1] => 1000, [6,6,6] => 600, [5,5,5] => 500, [4,4,4] => 400, [3,3,3] => 300, [2,2,2] => 200,[1] => 100, [5] => 50}

def score( dice )
	total = 0
  @scores.each_key do |x|
  	2.times do
      if dice.count(x[0]) >= x.count
    		total += @scores[x]
    		x.count.times { dice.delete_at(dice.index(x[0])) }
    	end
    end
  end
  total
end

score([2, 3, 4, 6, 2])
score([2, 2, 2, 3, 3])
score([2, 4, 4, 5, 4])

describe "Scorer Function" do
	it 'should value this as worthless' do 
		expect(score([2, 3, 4, 6, 2])).to eq(0)
	end	

	it 'should value this triple correctly' do 
		expect(score([2, 2, 2, 3, 3])).to eq(0)
	end

	it 'should value this mixed set correctly' do 
		expect(score([2, 4, 4, 5, 4])).to eq(0)
	end
end

# describe "Scorer Function" do
#   it "should value this as worthless" do
#     Test.expect( score( [2, 3, 4, 6, 2] ) == 0,   "Should be 0 :-(" );
#   end
  
#   it "should value this triplet correctly" do
#     Test.expect( score( [2, 2, 2, 3, 3] ) == 200, "Should be 200" );
#   end
  
#   it "should value this mixed set correctly" do
#     Test.expect( score( [2, 4, 4, 5, 4] ) == 450, "Should be 450" );
#   end
# end