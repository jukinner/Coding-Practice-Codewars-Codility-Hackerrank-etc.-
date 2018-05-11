# # Requirements
# Please use Test Driven Development (TDD) and include your tests.
# Please submit your code in a git repo (zipped and emailed, not on github) where you have committed throughout the process so that
# we can see your progress as you code the solution.
# The program should accept an array of strings defining packages and their dependencies. Each string contains the name of a
# package followed by a colon and space then any dependencies required by that package. For simplicity we’ll assume that a package
# can have at most one dependency.
# The program should reject as invalid a dependency specification that contains cycles.
# The program should output a comma separated string of package names in the order of install, such that a package’s dependency will
# always precede that package.
# Examples

# VALID INPUT EXAMPLE 1
# The input:
# [ "KittenService: CamelCaser", "CamelCaser: " ]
# represents two packages, KittenService and CamelCaser, where KittenService depends on CamelCaser. In this case the output should be:
# "CamelCaser, KittenService"
# The output indicates that CamelCaser needs to be installed before KittenService.

require 'rspec'
# input = [ "KittenService: CamelCaser", "CamelCaser: " ]
# input = [
#          "KittenService: ",
#          "Leetmeme: Cyberportal",
#          "Cyberportal: Ice",
#          "CamelCaser: KittenService",
#          "Fraudstream: ",
#          "Ice: Leetmeme" 
#         ]

order_of_install = []
 input =  [
 "KittenService: ",
 "Leetmeme: Cyberportal",
 "Cyberportal: Ice",
 "CamelCaser: KittenService",
 "Fraudstream: Leetmeme",
 "Ice: "
]
def dependency_calculator(input, order_of_install)
  i = 0
  input = input
  input.each do |x|
    if x.split(": ").count == 1
      order_of_install << x.split(": ")
      input.delete(x)
    end
  end
  order_of_install = order_of_install.flatten
  length = input.length
  ((length * length)+1).times do
    input.each do |x|
      if order_of_install.include?(x.split(": ").last)
      order_of_install << x.split(": ").first
      input.delete(x)
      end
    end
    i += 1
    break if input.empty? == true 
    break if i == (length * length)
  end
  if i == (length * length)
    order_of_install.clear
    p order_of_install << "Cycle-Installation not possible"
    p input
  else
    p order_of_install
    p input
  end
end

dependency_calculator(input, order_of_install)



describe 'Inputs' do
  it 'is an array' do
    expect(input.class).to eq(Array)
  end

  it 'contains a string' do 
    expect(input[0].class).to eq(String)
  end

  it 'is not empty' do
    expect(input).not_to be_empty
  end
end

describe 'Outputs' do
  it 'is an array' do
    expect(dependency_calculator(input).class).to eq(Array)
  end

  it 'to be a string' do
    expect(dependency_calculator(input)[0].class).to eq(String)
  end
end

describe 'Inital Inputs' do
  it 'have no dependencies so they are moved to order of install array' do
    expect {dependency_calculator(input, order_of_install)}.to change{input.count}
  end  

  it 'order of install is updated to include some programs' do
    expect {dependency_calculator(input, order_of_install)}.to change{input.count}
  end  
end





# VALID INPUT EXAMPLE 2
# Given the input:
# [
#  "KittenService: ",
#  "Leetmeme: Cyberportal",
#  "Cyberportal: Ice",
#  "CamelCaser: KittenService",
#  "Fraudstream: Leetmeme",
#  "Ice: "
# ]
# A valid output for the above input would be:
# "KittenService, Ice, Cyberportal, Leetmeme, CamelCaser, Fraudstream"
# INVALID INPUT EXAMPLE
# The following input should be rejected because it contains a cycle (Leetmeme -> Cyberportal -> Ice -> Leetmeme):
# [
#  "KittenService: ",
#  "Leetmeme: Cyberportal",
#  "Cyberportal: Ice",
#  "CamelCaser: KittenService",
#  "Fraudstream: ",
#  "Ice: Leetmeme" 
# ]