class Review

  attr_reader :restaurant, :customer_name, :rating, :content
  @@all = []


  def initialize(customer_name,restaurant, content, rating)
    @restaurant = restaurant
    @content = content
    @rating = rating #the ratings are out of 5
    @customer_name = customer_name

    @@all << self
  end


  def self.all
    @@all
  end








end
