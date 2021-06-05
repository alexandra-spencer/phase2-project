class Hiker < ApplicationRecord
    has_one_attached :avatar
    has_many :favorites
    has_many :trails, through: :favorites
    has_many :reviews

    has_secure_password

    validates :name, presence: true
    validates :username, presence: true
    validates :username, uniqueness: true
    
    def display_rating(trail_id)
       review = self.reviews.find { |review| review.trail_id == trail_id }
       if review 
        review.rating
       else 
        "Have not rated"
       end 
    end 

end


    