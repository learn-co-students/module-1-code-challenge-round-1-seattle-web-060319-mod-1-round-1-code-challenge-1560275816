require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spencerl = Customer.new("Spencer", "Lindemuth")
spencerj = Customer.new("Spencer", "James")
rohit = Customer.new("Rohit", "Raj")
philip = Customer.new("Philip", "Man")

outlier = Restaurant.new("Outlier")
vonns = Restaurant.new("Vonn's")
yardhouse = Restaurant.new("YardHouse")

spencerl.add_review(outlier, "It's fine", 3)
spencerl.add_review(vonns, "Zach is amazing", 5)
spencerl.add_review(yardhouse, "Nick was here", 2)
spencerj.add_review(yardhouse, "So many beerzz", 4)
philip.add_review(outlier, "whats a cocktail", 4)
philip.add_review(vonns, "again with the cocktails", 5)
x = rohit.add_review(outlier, "Your finest chicken please", 5)





pry
#leave this here to ensure binding.pry isn't the last line