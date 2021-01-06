class Trail < ApplicationRecord
    has_many :favorites
    has_many :hikers, through: :favorites
    has_many :restaurants
    has_many :reviews


    def average_rating

        byebug
        total = 0
        self.reviews.each do |review| 
            total += review.rating
        end 

        amount_reviews = self.reviews.count 
        avg_reviews = total / amount_reviews.to_f(2)

       avg_reviews 
    end

end
