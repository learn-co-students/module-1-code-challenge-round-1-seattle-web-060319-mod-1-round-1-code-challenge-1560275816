class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
  	Review.new(self, restaurant, content, rating)
  end

  def num_reviews
  	my_reviews = []
  	Review.all.each do |review|
  		if review.customer == self
  			my_reviews << review
  		end
  	end
  	my_reviews.count
  end

  def restaurants
  	unique_restaurants = Review.all.select { |review| review.customer == self }
  	unique_restaurants.uniq
  end

  def self.all
  	@@all	
  end

  def self.find_all_by_first_name(first_name)
  	@@all.select { |customer| customer.first_name == first_name }
  end


end
