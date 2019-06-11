require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Jake", "Smith")
cust2 = Customer.new("John", "Doe")

rest1 = Restaurant.new("chilis")
rest2 = Restaurant.new("Red Robin")

review1 = Review.new(cust1, rest1, "yadayada", 3)
review2 = Review.new(cust2, rest2, "badabada", 5)
review3 = Review.new(cust1, rest2, "it was aite", 2)
review1 = Review.new(cust2, rest1, "wack af", 1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
