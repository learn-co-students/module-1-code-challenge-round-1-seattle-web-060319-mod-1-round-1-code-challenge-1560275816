require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("john", "snow")
c2 = Customer.new("karen", "go")
c3 = Customer.new("cody", "green")
r1 = Restaurant.new("starbucks")
r2 = Restaurant.new("mcdonalds")
r3 = Restaurant.new("subway")
rw1 = Review.new("I loved my experience")
rw2 = Review.new("Ihated my experience")
rw3 = Review.new("It was ok")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
