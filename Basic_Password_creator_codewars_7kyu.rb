# One suggestion to build a satisfactory password is to start with a memorable phrase or sentence and make a password by extracting the first letter of each word.

# Even better is to replace some of those letters with numbers (e.g., the letter O can be replaced with the number 0):

# instead of including i or I put the number 1 in the password;
# instead of including o or O put the number 0 in the password;
# instead of including s or S put the number 5 in the password.
# Examples:
# "Give me liberty or give me death"  --> "Gml0gmd"
# "Keep Calm and Carry On"            --> "KCaC0"

require 'rspec'

# def make_password(phrase)
#   phrase = phrase.split(" ").map! { |y| y[0] }.map! do |x| 
#   /[iI]/ =~ x ? x = "1" : x
#   /[oO]/ =~ x ? x = "0" : x
#   /[sS]/ =~ x ? x = "5" : x
#   end.join("")
# end

def make_password(phrase)
  phrase = phrase.split(" ").map! { |y| y[0] }.map! do |x| 
  x.tr("iI","1")
  x.tr("oO","0")
  x.tr("sS","5")
  end.join("")
end



describe 'Password Creator' do
	it 'can handle different length strings' do
	expect(make_password("Give me liberty or give me death")).to eq("Gml0gmd")
	expect(make_password("Keep Calm and Carry On")).to eq("KCaC0")
	end
end