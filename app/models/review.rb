class Review
    @@all = []
    attr_reader :restaurant, :customer
    attr_accessor :content, :rating
    def initialize(restaurant, customer, content, rating)
        @restaurant = restaurant
        @customer = customer
        if rating >= 1 && rating <= 5
            @rating = rating
        else
            @rating = 5
        end 
        @content = content
        @@all << self
    end

    def self.all 
        @@all
      end
end

