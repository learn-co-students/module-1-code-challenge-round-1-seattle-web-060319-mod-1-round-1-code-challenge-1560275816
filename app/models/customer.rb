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

  def my_reviews
    Review.all.select { |review| review.customer == self }
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    my_reviews.length
  end

  def restaurants
    all_restaurants = []
    self.my_reviews.select { |review| all_restaurants << review.restaurant }
    all_restaurants.uniq
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |customer| customer.full_name == name }
  end

  def self.find_all_by_first_name(name)
    self.all.select { |customer| customer.first_name == name }
  end

  def self.all_names
    self.all.collect { |customer| customer.full_name }
  end
end
