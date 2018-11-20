# Task
# "AL-AHLY" and "Zamalek" are the best teams in Egypt, but "AL-AHLY" always wins the matches between them. "Zamalek" managers want to know what is the best match they've played so far.

# The best match is the match they lost with the minimum goal difference. If there is more than one match with the same difference, choose the one "Zamalek" scored more goals in.

# Given the information about all matches they played, return the index of the best match (0-based). If more than one valid result, return the smallest index.

# Example
# For ALAHLYGoals = [6,4] and zamalekGoals = [1,2], the output should be 1.

# Because 4 - 2 is less than 6 - 1

# For ALAHLYGoals = [1,2,3,4,5] and zamalekGoals = [0,1,2,3,4], the output should be 4.

# The goal difference of all matches are 1, but at 4th match "Zamalek" scored more goals in. So the result is 4.

# Input/Output
# [input] integer array ALAHLYGoals

# The number of goals "AL-AHLY" scored in each match.

# [input] integer array zamalekGoals

# The number of goals "Zamalek" scored in each match. It is guaranteed that zamalekGoals[i] < ALAHLYGoals[i] for each element.

# [output] an integer

# Index of the best match.

# def best_match(goals1, goals2)
# 	differences, correlation_hash, answer  = [], {}, 0
# 	goals1.each_with_index do |item, ind|
# 		differences << item - goals2[ind]
# 		correlation_hash.store(ind, [goals2[ind], (item - goals2[ind])])
# 	end
# 	if differences.count(differences.min) == 1
# 		answer = differences.index(differences.min)
# 	elsif differences.count(differences.min) > 1
# 		correlation_hash.each_pair do |key, value|
# 			if value[1] == differences.min
# 				answer = correlation_hash.key(value) if value[0] > answer
# 			end
# 		end
# 	end
# 	p answer
# end


def best_match(goals1, goals2)
	differences, correlation_hash, answer, last  = [], {}, 0, [0,0]
	goals1.each_with_index do |item, ind|
		differences << item - goals2[ind]
		correlation_hash.store(ind, [goals2[ind], (item - goals2[ind])])
	end
	if differences.count(differences.min) == 1
		answer = differences.index(differences.min)
	elsif differences.count(differences.min) > 1
		correlation_hash.each_pair do |key, value|
			if value[1] == differences.min				
				if value[0] > last[0]
					answer = correlation_hash.key(value)
					last = value
				end
			end
		end
	end
	p answer
end



best_match([6, 4],[1, 2])
# # ,1)
best_match([1],[0])
# # ,0)
best_match([1, 2, 3, 4, 5],[0, 1, 2, 3, 4])
# # ,4)
best_match([3, 4, 3],[1, 1, 2])
# # ,2)
best_match([4, 3, 4],[1, 1, 1])
# ,1)
best_match([17, 11, 12, 15, 9, 18, 17, 10, 9, 12, 12, 4, 11, 8, 16, 17, 1, 13, 7, 12],[9, 5, 5, 8, 0, 9, 8, 1, 7, 8, 2, 0, 3, 1, 10, 7, 0, 3, 1, 6])
best_match([13, 11], [4,2])


