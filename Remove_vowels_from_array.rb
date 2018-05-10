require 'rspec'

def vowel_remover(alphabet)
  p alphabet.delete_if { |x| x =~ /[aeiou]/ }
end

# Jordan's code
essentially this says find these letters, remove them and return everything that is left. 
def vowel_remove (alphabet)
  alphabet.grep(/[^aeiou]/)
end



# alphabet = ('a'..'z').to_a
# vowel_remover(alphabet)

describe 'Vowel remover' do
  it 'removes vowels from the alphabet' do
    alphabet = ('a'..'z').to_a
    expect(vowel_remover(alphabet)).to eq(["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"])
  end
end