class Customer
  attr_reader :first_name, :last_name
  attr_accessor

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

  def add_review(restaurant, content, rating)

    Review.new(self.full_name,restaurant, content, rating)

  end

  def num_reviews

    name = self.full_name
    Review.all.select{|obj|obj.customer_name== name}.length

  end

  def restaurants

    name = self.full_name
    Review.all.select{|obj|obj.customer_name == name}.map{|obj|obj.restaurant.name}.uniq

  end

  def self.find_by_name(name)

    Customer.all.select{|obj|obj.full_name == name}

  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|obj|obj.first_name == name}
  end

  def self.all_names
    Customer.all.select{|obj|obj.full_name}.map{|obj|obj.full_name}
  end



end
