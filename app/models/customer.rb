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

  def self.all 
    @@all
  end

  def add_review(restuarant, content, rating)
    Review.new(restuarant,self,content,rating)    
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    arr = self.reviews
    arr.length
  end
  
  def restaurants
    self.reviews.map {|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
    arr = name.split(" ")
    Customer.all.find{|customer| arr[0] == customer.first_name && arr[-1] == customer.last_name }
  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map{|customer| customer.full_name}
  end

end
