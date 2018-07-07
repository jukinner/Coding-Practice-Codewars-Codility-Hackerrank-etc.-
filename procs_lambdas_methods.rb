# Demonstrate Ruby Procs / Lambdas vs Methods for Variable Scope
# There are some key differences between procs / lambdas and traditional methods in Ruby, however the differences can many times be subtle. In this exercise we'll examine how variable scope is processed differently between the different options.
# Summary
# Build a program that illustrates the differences in variable scope in Ruby between Procs / Lambdas, and traditional methods.

# Exercise Description
# Build a traditional method and a lambda or Proc and illustrate how the two processes have different access levels for local variables.

# Real World Usage
# This exercise showcases one of the subtle differences between Procs / lambdas and plain Ruby methods. At a high level it may seem like the three options can be used interchangeably, however in this guide we'll walk through how they approach variable access much differently.


require 'rspec'

val = 0

# just a variable that is storing a lambda process
proc_process = -> { val += 1 }
# proc_process.call---- returns 1
# proc_process.call---- returns 2
# proc_process.call---- returns 3 etc..

def some_method
  p val += 1
end
# this will throw an error. the local variable is not available to the method. 
# some_method

# This is one of the key differences between lambdas and methods. it is variable scope. 
# procs and lambdas are very similar. 

describe 'Proc/lambda vs method' do
  it 'can access a variable outside its scope and process it' do
    proc_process.call
    proc_process.call
    proc_process.call
    expect(proc_process.call).to eq(4)
  end

  it 'will raise an error when trying to access a local variable outside its scope' do
    expect { some_method }.to raise_error(NoMethodError)
  end
end

# short example
# def greeting
#   p "hey there"
# end

# greeting

# greeting_lambda = -> { p "hey there" }

# greeting_lambda.call

