class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    all_customers = []
    self.reviews.select { |review| all_customers << review.customer }
    all_customers.uniq
  end

  def average_star_rating
    all_ratings = self.reviews.collect { |review| review.rating }
    all_ratings.sum / all_ratings.length
  end

  def longest_review
    longest = nil
    all_content = self.reviews.collect { |review| review.content }
    all_content.each do |content|
      if longest == nil || longest.length < content.length
        longest = content
      end
    end
    longest
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end
end
