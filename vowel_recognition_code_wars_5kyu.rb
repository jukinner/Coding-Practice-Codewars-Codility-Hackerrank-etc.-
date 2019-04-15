# {a, e, i, o, u, A, E, I, O, U}

# Natural Language Understanding is the subdomain of Natural Language Processing where people used to design AI based applications have ability to understand the human languages. HashInclude Speech Processing team has a project named Virtual Assistant. For this project they appointed you as a data engineer (who has good knowledge of creating clean datasets by writing efficient code). As a data engineer your first task is to make vowel recognition dataset. In this task you have to find the presence of vowels in all possible substrings of the given string. For each given string you have to return the total number of vowels.

# Example
# Given a string "baceb" you can split it into substrings: b, ba, bac, bace, baceb, a, ac, ace, aceb, c, ce, ceb, e, eb, b. The number of vowels in each of these substrings is 0, 1, 1, 2, 2, 1, 1, 2, 2, 0, 1, 1, 1, 1, 0; if you sum up these number, you get 16 - the expected output.

# Note: your solution should have linear time complexity.

def vowel_recognition input
	input, count = input.split("").map! {|x| x =~ /[a,e,i,o,u,A,E,I,O,U]/ ? x = 1 : x = 0 }, 0
	input.each_with_index { |x, ind| x == 0 ? 0 : count += ((ind + 1) * (input.length - ind)) } 
	p count
end

# def vowel_recognition input
# 	input = input.split("").map! do |x|
# 		if x =~ /[a,e,i,o,u,A,E,I,O,U]/
# 			x = 1
# 		else
# 			x = 0
# 		end
# 	end
#   count, counter_one = 0, 1
#   while counter_one < (input.length + 1)
#   	count += input.each_cons(counter_one).to_a.flatten.inject(:+)
#   	counter_one +=1
#   end
# p count
# end

# def vowel_recognition input
# 	input = input.split("").map! do |x|
# 		if x =~ /[a,e,i,o,u,A,E,I,O,U]/
# 			x = 1
# 		else
# 			x = 0
# 		end
# 	end
#   count, counter_one, counter_two = 0, 0, 0
#   input.length.times do  
#     (input.length - counter_one).times do 
#       count += input[counter_one..counter_two].inject(:+)
#       counter_two += 1
#     end
#   counter_one +=1
#   counter_two = counter_one
#   end
# p count
# end

# def vowel_recognition input
#   count, counter_one, counter_two = 0, 0, 0
#   input.length.times do  
#     (input.length - counter_one).times do 
#       count += input[counter_one..counter_two].scan(/[a,e,i,o,u,A,E,I,O,U]/).size
#       counter_two += 1
#     end
#   counter_one +=1
#   counter_two = counter_one
#   end
# # list.each {|x| x.split("").each {|y| count += 1 if y =~ /[a,e,i,o,u,A,E,I,O,U]/ }}
# p count
# end

vowel_recognition("baceb")
vowel_recognition("bbbb")
vowel_recognition("aeiou")
vowel_recognition("aeiouAEIOU")

# Test.assert_equals(vowel_recognition("baceb"), 16)
# Test.assert_equals(vowel_recognition("bbbb"), 0)
# Test.assert_equals(vowel_recognition("aeiou"), 35)
# Test.assert_equals(vowel_recognition("aeiouAEIOU"), 220)