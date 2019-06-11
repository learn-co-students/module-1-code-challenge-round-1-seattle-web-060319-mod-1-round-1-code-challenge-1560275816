class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end


  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    arr = self.reviews.map {|review| review.restaurant}
    arr.uniq
  end

  def self.find_all_by_first_name(first_name)
    @@all.select {|element| element.first_name == first_name}
  end

end
