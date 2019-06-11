require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Gib", "Fitch")
c2 = Customer.new("Doug", "Fitch")
c3 = Customer.new("Happy", "Fitch")
c4 = Customer.new("Teaks", "Fitch")
c5 = Customer.new("Gib", "Yorke")
r1 = Restaurant.new("La Madeleine")
r2 = Restaurant.new("Honey Pig")
r3 = Restaurant.new("Pho King Good!")
r4 = Restaurant.new("Waffle Window")
v1 = Review.new(c1, r1, "Cool", 5)
v2 = Review.new(c2, r2, "Cool", 5)
v3 = Review.new(c3, r3, "Cool", 5)
v4 = Review.new(c4, r4, "Cool", 5)
v5 = Review.new(c1, r2, "OK", 3)
v6 = Review.new(c2, r3, "OK", 3)
v7 = Review.new(c3, r4, "OK", 3)
v8 = Review.new(c4, r1, "OK", 3)
v9 = Review.new(c1, r1, "Not good anymore", 1)
v10 = Review.new(c2, r2, "Not good anymore", 1)
v11 = Review.new(c3, r3, "Not good anymore", 1)
v12 = Review.new(c4, r4, "Not good anymore", 1)

binding.pry
"Bon Appetit" #leave this here to ensure binding.pry isn't the last line