# Assume "#" is like backspace in string. This means that string "a#bc#d" actually is "bd"

# Your task is to process a string with "#" symbols.

# Examples
# "abc#d##c"      ==>  "ac"
# "abc##d######"  ==>  ""
# "#######"       ==>  ""
# ""              ==>  ""


def clean_string(string)
  answer = string.chars.each_with_object([]) do |item, obj| 
    if item == "#"
      obj.delete_at(-1) if obj[-1] != ""
    else
      obj << item
    end
  end
  answer.join("")
end

def clean_string(string)
  answer = string.chars.each_with_object([]) { |item, obj| item == "#" ? obj.delete_at(-1) if obj[-1] != "" : obj << item }
  answer.join("")
end
