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


  def self.find_by_name(name)
    @@all.find do |finder|
      finder.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.find do |finder|
      finder.first_name == name
    end
  end

  def self.all_names
    @@all.select do |finder|
      finder.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    review_number = Review.all.select do |reviews|
      reviews.customer == self
    end
      review_number.length
  end

  def restaurants
    restos_reviewed = Review.all.select do |reviews|
      if reviews.customer == self
        return reviews.restaurant
      end
    end
    return restos_reviewed.uniq
  end




  def self.all
    @@all
  end


end
