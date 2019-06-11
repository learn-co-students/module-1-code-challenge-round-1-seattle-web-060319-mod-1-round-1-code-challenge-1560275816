class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers  
    self.reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    arr = self.reviews.map {|review| review.rating}
    arr.inject {|sum, element| sum + element}.to_f / arr.length
  end

  def longest_review
    arr = self.reviews.map {|review| review.content}
    ra = arr.sort_by{|content| content.length}
    ra[-1]
  end

  def self.find_by_name(name)
    Restaurant.all.find{|restaurant| restaurant.name == name}
  end


end