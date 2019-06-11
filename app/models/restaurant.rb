class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

   def customers
  	unique_customers = Review.all.select { |review| review.restaurant == self }
  	unique_customers.uniq
  end

  def reviews
  	Review.all.select { |review| review.restaurant == self }
  end

  def average_star_rating
  	rating_sum = 0
  	total_ratings = self.reviews.count
  	
  	Review.all.each do |review|
  		if review.restaurant == self
  			rating_sum += review.rating
  		end
  	end

  	rating_sum.to_f / total_ratings

  end

  def self.all
  	@@all	
  end

  def self.find_by_name(name)
  	@@all.select { |restaurant| restaurant.name == name }
  end

end


