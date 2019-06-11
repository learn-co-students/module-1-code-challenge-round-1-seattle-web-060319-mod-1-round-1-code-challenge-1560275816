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

  def customers
    name = self
    Review.all.select{|obj|obj.restaurant == name}.map{|obj|obj.customer_name}.uniq
  end

  def reviews

    Review.all.select{|obj|obj.restaurant== self}

  end


  def average_star_rating
    arr1 = self.reviews.map{|obj|obj.rating}
    average = (arr1.sum.to_f/arr1.length.to_f)
  end

  def longest_review
    ar = self.reviews.map{|obj|obj.content}
    ar.max_by(&:length)
  end

  def self.find_by_name(name)
    Restaurant.all.select{|obj|obj.name == name}
  end






end
