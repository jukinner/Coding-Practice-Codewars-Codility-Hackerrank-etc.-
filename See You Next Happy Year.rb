# See You Next Happy Year
# Scenario
# You're saying good-bye your best friend , See you next happy year .

# Happy Year is the year with only distinct digits , (e.g) 2018

# Task
# Given a year, Find The next happy year or The closest year You'll see your best friend  !alt !alt

# Notes
# Year Of Course always Positive .
# Have no fear , It is guaranteed that the answer exists .
# It's not necessary that the year passed to the function is Happy one .
# Input Year with in range (1000  ≤  y  ≤  9000)
# Input >> Output Examples:
# 1- nextHappyYear (7712) ==> return (7801)


def next_happy_year(year)
  x = false
  year = year + 1
  while x == false
    if year.digits.uniq.count == 4
      p year
      x = true
    else 
      year = year + 1
    end
  end
end

next_happy_year(1001)

best practices
def next_happy_year(year)    
  (year+1).upto(9999).detect { |n| n.digits.uniq.size == 4 }
end

def next_happy_year(year)
  begin 
    year += 1
  end while year.to_s.chars.map(&:to_i).uniq.length != 4
  year
end