class TouristSpot < ApplicationRecord

  has_many :posts, dependent: :destroy
end
