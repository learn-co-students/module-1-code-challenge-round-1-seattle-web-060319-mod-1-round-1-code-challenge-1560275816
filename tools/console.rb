require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

michael = Customer.new("Michael", "Maggs")
michelle = Customer.new("Michelle", "Maggs")
emme = Customer.new("Emme", "Maggs")

loulay = Restaurant.new("Loulay")
cafe = Restaurant.new("Cafe Campagne")
canlis = Restaurant.new("Canlis")

review1 = Review.new(loulay, emme, "loved it!", 4)
review2 = Review.new(canlis, emme, "never been", 0)
review3 = Review.new(cafe, michael, "a Seattle staple", 4)
review4 = Review.new(cafe, emme, "Calamari!", 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
