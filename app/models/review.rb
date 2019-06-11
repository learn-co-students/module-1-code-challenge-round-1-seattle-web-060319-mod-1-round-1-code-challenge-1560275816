class Review

  attr_accessor :content, :rating
  attr_reader :restaurant, :customer

  @@all = []

  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @rating = rating
    @@all.push(self)
  end


  def self.all
    @@all
  end

  # def customer(customer)
  #   @@all.select {|review| review.customer == customer}
  # end
  #
  # def restaurant(restaurant)
  #   @@all.select {|review| review.restaurant == restaurant}
  # end

  # def rating

end
