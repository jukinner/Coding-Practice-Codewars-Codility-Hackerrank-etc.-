# After a hard quarter in the office you decide to get some rest on a vacation. So you will book a flight for you and your girlfriend and try to leave all the mess behind you.

# You will need a rental car in order for you to get around in your vacation. The manager of the car rental makes you some good offers.

# Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total.

def rental_car_cost(d)
  total = 0
  if d >= 7
    total = d * 40 - 50
  elsif d >= 3
    total = d * 40 - 20 
  else
    total = d * 40
  end
  total
end