require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

deathNote = Customer.new("L", "Ryuzaki")
opm = Customer.new("OnePunch", "Man")
rohit = Customer.new("Rohit", "Pratti")

animeRestaurant = Restaurant.new("Death Note")
animeRestaurant2 = Restaurant.new("Attack on Titan")

deathNote.add_review(animeRestaurant, "Dank food love it", 5)
deathNote.add_review(animeRestaurant2, "Good food too much titan", 3)
rohit.add_review(animeRestaurant, "The food was great lots of sugar though", 4)







binding.pry
0 #leave this here to ensure binding.pry isn't the last line
