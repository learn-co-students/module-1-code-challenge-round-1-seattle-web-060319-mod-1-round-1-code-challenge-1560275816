class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    resto_custos =[]
    Review.all.select do |reviews|
    # binding.pry
      if reviews.restaurant == self
      resto_custos << reviews.customer
      end
    end
    return resto_custos.uniq
  end

  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  def average_star_rating
    total_ratings = []
    reviews.each do |score|
      # binding.pry
      total_ratings << score.rating
    end
    sum_of = total_ratings.sum.to_f
    count_of = total_ratings.count.to_f
    ave_rating= sum_of / count_of
      return ave_rating
  end

  def longest_review
    content_array = []
    Reviews.all.select do |reviews|
      reviews.restaurant == self
        content_array << reviews.content
    end
    content_array.map(&:length).max
  end

  def self.find_by_name(name)
    @@all.find do |finder|
      finder.name == name
    end
  end



  def self.all
    @@all
  end

end
