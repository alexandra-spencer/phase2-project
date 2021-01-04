class Trail < ApplicationRecord
    has_many :favorites
    has_many :hikers, through: :favorites
    has_many :restaurants
end
