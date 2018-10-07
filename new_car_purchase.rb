# A man has a rather old car being worth $2000. He saw a secondhand car being worth $8000. He wants to keep his old car until he can buy the secondhand one.

# He thinks he can save $1000 each month but the prices of his old car and of the new one decrease of 1.5 percent per month. Furthermore the percent of loss increases by a fixed 0.5 percent at the end of every two months.

# Can you help him? Our man finds it difficult to make all these calculations.

# How many months will it take him to save up enough money to buy the car he wants, and how much money will he have left over?

require 'rspec'

def nbMonths(startPriceOld, startPriceNew, savingperMonth, percentLossByMonth)
  current_old_resale_price = startPriceOld
  wealth = current_old_resale_price
  current_new_auto_price = startPriceNew
  savings = 0
  percentage = 1 - (percentLossByMonth.fdiv(100))
  i = 1
  while (current_old_resale_price + savings) <= current_new_auto_price
    savings += savingperMonth
  	p percentage -= 0.005 if i % 2 == 0
  	current_old_resale_price *= percentage
    current_new_auto_price *= percentage
    i += 1
  end
  wealth = savings + current_old_resale_price
  p answer = [i -= 1, (wealth - current_new_auto_price).round]
end

nbMonths(2000, 8000, 1000, 1.5)
nbMonths(12000, 8000, 1000, 1.5)
nbMonths(8000, 12000, 500, 1)

# Test.assert_equals(nbMonths(2000, 8000, 1000, 1.5), [6, 766])
# Test.assert_equals(nbMonths(12000, 8000, 1000, 1.5) ,[0, 4000])

describe 'enough saved to buy new card' do
	it 'can handle old car value < new car value' do 

		expect(nbMonths(2000, 8000, 1000, 1.5)).to eq([6, 766])
	end

	it 'can handle old car value > new car value' do
		expect(nbMonths(12000, 8000, 1000, 1.5)).to eq([0, 4000])
	end

	it 'can handle 3rd scenario' do 

		expec(nbMonths(8000, 12000, 500, 1)).to eq([8, 597])
	end
end