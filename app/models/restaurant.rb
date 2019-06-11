class Restaurant

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    total_cust = reviews.map do |review|
      review.customer
    end
    total_cust.uniq
  end

  def average_star_rating
    total = 0.0
    reviews.each do |review|
      total += review.rating
    end
    return total / (reviews.length)
  end

  def longest_review
    sorted = reviews.sort_by { |review| review.content.length }
    return sorted.last
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end




end
