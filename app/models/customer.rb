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

  def my_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    array = Review.all.select do |review|
      review.customer == self
    end
    array.length
  end

  def restaurants
    my_reviews.map { |review| review.restaurant}.uniq
  end


  def self.find_by_name(name)
    first_name = name.split[0]
    last_name = name.split[-1]
    @@all.find do |customer|
      customer.first_name == first_name && customer.last_name == last_name
    end
  end

  def self.find_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    @@all.map do |customer|
      customer.first_name + " " + customer.last_name
    end
  end







  def self.all
    @@all
  end
end
