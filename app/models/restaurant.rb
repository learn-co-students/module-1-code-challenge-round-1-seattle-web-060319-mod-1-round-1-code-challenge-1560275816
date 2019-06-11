class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def helper
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    arr = self.helper.map {|review| review.customer}
    arr.uniq
  end

  def reviews
    self.helper.map {|review| review.content}
  end

  def average_star_rating
    sum = 0
    arr = self.helper.map do |review|
      sum += review.rating
    end
    rating = sum/arr.length.to_f
    return rating
  end

  def longest_review
    length = 0
    longest = ""
    self.helper.each do |review|
      if review.content.length > length
        length = review.content.length
        longest = review.content
      end
    end
    return longest
  end

  def self.find_by_name(name)
    @@all.select {|element| element.name == name}
  end

end
