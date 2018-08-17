# ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

# Create a function that takes a string and returns the string ciphered with Rot13. If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

# Please note that using "encode" in Python is considered cheating.

def rot13(string)
  answer, alpha = ("a".."z").to_a, ""
  string.chars.each do |l|
    if alpha.include?(l)
      index = alpha.find_index(l)
      index < 13 ? answer << alpha[index + 13] : answer << alpha[12-(25 - index)]
    elsif alpha.include?(l.downcase)
      index = alpha.find_index(l.downcase)
      index < 13 ? answer << alpha[index + 13].upcase : answer << alpha[12-(25 - index)].upcase
    end
  end
  answer
end












