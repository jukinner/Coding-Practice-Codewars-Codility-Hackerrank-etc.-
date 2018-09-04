# Using SimpleDelegator in Ruby to Implement the Decorator Pattern
# There are a number of ways to implement the decorator design pattern in Ruby. In this guide we're going to 
# examine how we can leverage the SimpleDelegator tool in Ruby to add additional functionality to a class.
# Summary
# Build a delegator for a Ruby class by using Ruby's SimpleDelegator.

# Exercise Description
# Implement a delegator for a Ruby class using Ruby's SimpleDelegator process to add functionality to a 
# class without having to add code to the class itself.

# Examples
# # A standard Ruby class that has a name initializer attribute
# invoice = Invoice.new('Kristine Hudgens')

# # A decorator that inherits from SimpleDelegator
# # and takes in an instance of the Invoice class
# decorated_invoice = InvoiceDecorator.new(invoice)

# # invoice_month needs to be a method in the class
# # but it can be called by the delegate
# decorated_invoice.invoice_month # => 9

# # last_name is a method in the decorator
# # that splits the class name attribute
# decorated_invoice.last_name # 'Hudgens'

# # this shows that you can access the object
# # passed to the decorator with the __getobj__ method
# decorated_invoice.__getobj__ == invoice # => true
# Real World Usage
# The decorator pattern is a common design pattern. Ruby offers a number of processes for implementing the pattern and the 
# SimpleDelegator is one of the most popular. This is critical when it comes to building clean programs and following best practices.

require 'rspec'
require 'date'

# Initial answer
class Invoice
	attr_accessor :name

	def initialize name
		@name = name
	end
end

class InvoiceDecorator < SimpleDelegator
	def first_name
		name.split(" ")[0]
	end

	def last_name
		name.split(" ")[1]
	end

	def invoice_month
		9
	end

end

# ALTERNATE SOLUTION
class Invoice
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def invoice_date
    Date.new(1989, 9, 10)
  end
end

class InvoiceDecorator < SimpleDelegator
  def invoice_month
    invoice_date.month
  end

  def last_name
    name.split.last
  end
end


describe 'Delegator' do
  it 'can take an invoice as an argument and add functionality on top of the class' do
    invoice = Invoice.new('Kristine Hudgens')
    decorated_invoice = InvoiceDecorator.new(invoice)
    expect(decorated_invoice.invoice_month).to eq(9)
  end

  it 'can work with data from the class' do
    invoice = Invoice.new('Kristine Hudgens')
    decorated_invoice = InvoiceDecorator.new(invoice)
    expect(decorated_invoice.last_name).to eq('Hudgens')
  end

  it 'can access the decorated object' do
    invoice = Invoice.new('Kristine Hudgens')
    decorated_invoice = InvoiceDecorator.new(invoice)
    expect(decorated_invoice.__getobj__).to eq(invoice)
  end
end







# NOTES
# require 'delegate'

# class User
#   attr_reader :first_name, :last_name, :city

#   def initialize(first_name, last_name, city)
#     @first_name = first_name
#     @last_name = last_name
#     @city = city
#   end
# end

# class DecoratedUser < SimpleDelegator
#   def full_name
#     "#{first_name} #{last_name}"
#   end

#   def greeting
#     "Hi, I'm #{first_name}! I live in #{city}"
#   end
# end

# u = User.new("John", "Doe", "London")
# decorated_user = DecoratedUser.new(u)

# puts decorated_user.greeting
# # => Hi, I'm John! I live in London