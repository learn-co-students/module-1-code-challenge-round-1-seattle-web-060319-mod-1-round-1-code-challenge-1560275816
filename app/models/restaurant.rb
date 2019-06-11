class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  #helper method finds all reviews for current restaurant
  def reviews
    Review.all.select{ |review| review.restaurant == self}
  end

  def customers
    reviews.map { |review| review.customer}.uniq
  end

  def average_star_rating
    array = reviews.map { |review| review.rating}
    (array.inject(0, :+)) / array.length
  end

  def longest_review
    array = reviews.map { |review| review.content}
    sorted = array.sort_by{ |element| element.length}
    sorted[-1]
  end

  def self.find_by_name(name)
    @@all.find { |restaurant| restaurant.name == name}
  end


  def self.all
    @@all
  end

end
