# Given a time in -hour AM/PM format, convert it to military (24-hour) time.

# Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.

# Function Description

# Complete the timeConversion function in the editor below. It has one parameter:

# A string, , denoting the time.
# The function must return a string denoting the 24-hour formatted time.

# Raw Input Format

# A single string  containing a time in -hour clock format (i.e.:  or ), where  and .

# Sample Input 0

# 07:05:45PM
# Sample Output 0

# 19:05:45

def timeConversion(s)
    if s =~ /[pP]/
        r = s.chomp("PM")
        r = r.split(":")
          if r[0] == "12"
            r[0] = "12"
          else
            r[0] = (r[0].to_i + 12).to_s
          end 
        
        r = r[0] + ":" + r[1] + ":" + r[2]
    elsif
        if s =~ /[aA]/
            r = s.chomp("AM")
            r = r.split(":")
                if r[0] == "12"
                    r[0] = "00"
                end
            r = r[0] + ":" + r[1] + ":" + r[2]
        end
    end
  p r
end

timeConversion("12:05:39PM")
timeConversion("1:05:39PM")
timeConversion("1:05:39AM")
timeConversion("12:05:39AM")