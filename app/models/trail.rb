class Trail < ApplicationRecord
    has_many :favorites
    has_many :hikers, through: :favorites
    has_many :restaurants
    has_many :reviews


    def average_rating

        total = 0
        avg_reviews = 0
        self.reviews.each do |review|
            if review.rating != nil
                total += review.rating
            end
        end

        amount_reviews = self.reviews.select{|review| review.rating != nil}.count
        if amount_reviews > 0
            avg_reviews = total / amount_reviews.to_f
        end
       avg_reviews
    end

end
