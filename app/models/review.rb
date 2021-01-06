class Review < ApplicationRecord
    belongs_to :hiker
    belongs_to :trail

    validates :text, presence: true 

    def username
        self.hiker.username
    end 

end
