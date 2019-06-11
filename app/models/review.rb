class Review

  attr_accessor :author

  @@all = []

  def initialize(author)
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
  end

  def restaurant
  end

  def rating
  end

  def content
  end
end
