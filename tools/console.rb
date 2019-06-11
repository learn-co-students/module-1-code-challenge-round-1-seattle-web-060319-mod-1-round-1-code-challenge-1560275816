require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
philip = Customer.new("Philip","Sterling")
spencer = Customer.new("Spencer","L")
spencer2 = Customer.new("Spencer","J")
rohit = Customer.new("Rohit", "Pratti")
first = Restaurant.new("First")
second = Restaurant.new("Second")
third = Restaurant.new("Third")
philip.add_review(first,"AA",8)
philip.add_review(first,"EEEE",5)
philip.add_review(second,"B",3)
rohit.add_review(first,"CCC",5)
spencer.add_review(third,"D",1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line