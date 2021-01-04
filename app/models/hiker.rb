class Hiker < ApplicationRecord
    has_many :favorites
    has_many :trails, through: :favorites
    has_many :comments
end
