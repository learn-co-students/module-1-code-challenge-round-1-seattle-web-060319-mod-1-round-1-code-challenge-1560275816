require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bww = Restaurant.new("Buffalo Wild Wings")
jjs = Restaurant.new("Jimmy Johns")
pb = Restaurant.new("Potbelly")
sb = Restaurant.new("Starbucks")
chilis = Restaurant.new("Chili's")

alex = Customer.new("Alexander", "the Great")
mark = Customer.new("Marcus", "Arelius")
gk = Customer.new("Ghenghis", "Khan")
the_true_son_of_god = Customer.new("Bob", "Saget")
alexa = Customer.new("Alexander", "the Fabulous")

alex.add_review(bww, 4, "OK wings, great beer selection")
mark.add_review(pb, 5, "Excellent sandwiches; top-notch bacon")
gk.add_review(sb, 2, "Weak coffee; I think I'll invade somewhere else next time.")
the_true_son_of_god.add_review(pb, 3, "Decent food, but the bathrooms were filthy.")
mark.add_review(chilis, 4, "Nice margaritas, great atmosphere.")
alex.add_review(jjs, 5, "Came here on a recommendation by Aristotle.  He never steers me wrong.")
the_true_son_of_god.add_review(bww, 3, "Food was tolerable, but the wine sucked so I just made my own")
alexa.add_review(jjs, 2, "The bread is gas, but drink selection is so NOT dank.")
alex.add_review(bww, 4, "I like the chicken wrap.  I think I'll find my next wife here.")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
