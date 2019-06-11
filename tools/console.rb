require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sally = Customer.new("Sally", "Smith")
sally2 = Customer.new("Sally", "Jenkins")
bob = Customer.new("Bob", "Brown")
jim = Customer.new("Jim", "Jones")

outback = Restaurant.new("Outback")
sbux = Restaurant.new("Sbux")
dram = Restaurant.new("Dram Shop")

rev1 = bob.add_review(outback, "This place rocks!", 1)
rev2 = bob.add_review(sbux, "This place is great!", 4)
rev3 = jim.add_review(outback, "Love the service.", 4)
rev4 = sally.add_review(sbux, "Truly terribly experience!", 1)
rev5 = sally.add_review(outback, "Great!", 5)
rev6 = bob.add_review(dram, "Love it. All the stars.", 5)




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line