class Trail < ApplicationRecord
    has_many :favorites
    has_many :hikers, through: :favorites
    has_many :restaurants


    def average_rating
        trail_ratings = reviews.all.select {|review| review.renter_id == self.id}
        ratings_sum = renter_reviews.sum {|review| review.rating}
        average=ratings_sum/trail_reviews.count.to_f
        rounded_ave=average.round(1)
    end
end
